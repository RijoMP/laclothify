-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 04:35 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laclothify`
--

-- --------------------------------------------------------

--
-- Table structure for table `lc_auth`
--

CREATE TABLE `lc_auth` (
  `auth_id` int(10) NOT NULL,
  `auth_eid` int(10) NOT NULL,
  `auth_mail` varchar(50) NOT NULL,
  `auth_pass` varchar(30) NOT NULL,
  `auth_secquestion` varchar(50) NOT NULL,
  `auth_secanswer` varchar(30) NOT NULL,
  `auth_role` varchar(30) NOT NULL,
  `auth_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lc_auth`
--

INSERT INTO `lc_auth` (`auth_id`, `auth_eid`, `auth_mail`, `auth_pass`, `auth_secquestion`, `auth_secanswer`, `auth_role`, `auth_status`) VALUES
(1234, 509876, 'mail@mail.com', 'teenateena', 'name?', 'mail', 'staff', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `lc_bills`
--

CREATE TABLE `lc_bills` (
  `bill_id` int(10) NOT NULL,
  `bill_date` int(10) NOT NULL,
  `bill_buyer` varchar(50) NOT NULL,
  `bill_buyeradrs` varchar(100) NOT NULL,
  `bill_products` varchar(50) NOT NULL,
  `bill_count` varchar(30) NOT NULL,
  `bill_total` float NOT NULL,
  `bill_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lc_category`
--

CREATE TABLE `lc_category` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `cat_description` varchar(100) NOT NULL,
  `cat_imageurls` varchar(200) NOT NULL,
  `cat_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lc_category`
--

INSERT INTO `lc_category` (`cat_id`, `cat_name`, `cat_description`, `cat_imageurls`, `cat_status`) VALUES
(1, 'Shirt-Cotton', 'coootij4jg4jgk4jtgkkjjekjfkjgktgtklgkrg', 'thj54t54t54khllgng', 'active'),
(2, 'Pant-Cotton', 'coootij4jg4jgk4jtgkkjjekjfkjgktgtklgkrg', 'thj54t54t54khllgng', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `lc_employees`
--

CREATE TABLE `lc_employees` (
  `e_id` int(10) NOT NULL,
  `e_fname` varchar(30) NOT NULL,
  `e_mname` varchar(30) DEFAULT NULL,
  `e_lname` varchar(30) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `e_phoneprimary` varchar(15) NOT NULL,
  `e_phonesecondary` varchar(15) NOT NULL,
  `e_dob` bigint(10) NOT NULL,
  `e_adrsline1` varchar(30) NOT NULL,
  `e_adrsline2` varchar(30) DEFAULT NULL,
  `e_adrsstreet` varchar(40) NOT NULL,
  `e_adrspin` int(6) NOT NULL,
  `e_adrsproof` varchar(30) NOT NULL,
  `e_adrsproofpath` varchar(200) NOT NULL,
  `e_gender` varchar(15) NOT NULL,
  `e_emergencycontact` int(12) NOT NULL,
  `e_marrysts` varchar(15) NOT NULL,
  `e_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lc_employees`
--

INSERT INTO `lc_employees` (`e_id`, `e_fname`, `e_mname`, `e_lname`, `e_mail`, `e_phoneprimary`, `e_phonesecondary`, `e_dob`, `e_adrsline1`, `e_adrsline2`, `e_adrsstreet`, `e_adrspin`, `e_adrsproof`, `e_adrsproofpath`, `e_gender`, `e_emergencycontact`, `e_marrysts`, `e_status`) VALUES
(509876, 'protagonist', NULL, 'elsyium', 'mail@mail.com', '9234567890', '0987654321', 9999999999, 'rose villa', 'abc lane', 'xyz street', 666666, 'votersid', 'jgdfyhgchfjgdvhjcbvgdhjb c', 'male', 1345678901, 'unmarried', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `lc_material`
--

CREATE TABLE `lc_material` (
  `mt_id` int(11) NOT NULL,
  `mt_name` varchar(20) NOT NULL,
  `mt_description` varchar(200) NOT NULL,
  `mt_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lc_product`
--

CREATE TABLE `lc_product` (
  `p_id` int(10) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_price` float NOT NULL,
  `p_description` varchar(100) NOT NULL,
  `p_category` int(10) NOT NULL,
  `p_imageurls` varchar(200) NOT NULL,
  `p_addedby` varchar(20) NOT NULL,
  `p_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lc_product`
--

INSERT INTO `lc_product` (`p_id`, `p_name`, `p_price`, `p_description`, `p_category`, `p_imageurls`, `p_addedby`, `p_status`) VALUES
(1, 'wrangler', 345, 'u67k7 578in8n', 2, 'ffffffthnb ju6jubjujb 6b6', '223', 'active'),
(2, 'North Republic', 345, 'u67k7 578in8n', 2, 'ffffffthnb ju6jubjujb 6b6', '223', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `lc_size`
--

CREATE TABLE `lc_size` (
  `sz_id` int(10) NOT NULL,
  `sz_name` varchar(40) NOT NULL,
  `sz_status` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lc_stock`
--

CREATE TABLE `lc_stock` (
  `st_id` int(10) NOT NULL,
  `st_product` int(10) NOT NULL,
  `st_category` int(11) NOT NULL,
  `st_material` int(11) NOT NULL,
  `st_size` int(11) NOT NULL,
  `st_count` int(5) NOT NULL,
  `st_discount` int(2) NOT NULL,
  `st_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lc_stock_history`
--

CREATE TABLE `lc_stock_history` (
  `sh_id` int(10) NOT NULL,
  `sh_date` int(15) NOT NULL,
  `sh_product` int(15) NOT NULL,
  `sh_category` int(11) NOT NULL,
  `sh_material` int(11) NOT NULL,
  `sh_size` int(11) NOT NULL,
  `sh_count` int(15) NOT NULL,
  `sh_addedby` int(15) NOT NULL,
  `sh_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lc_auth`
--
ALTER TABLE `lc_auth`
  ADD PRIMARY KEY (`auth_id`);

--
-- Indexes for table `lc_bills`
--
ALTER TABLE `lc_bills`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `lc_category`
--
ALTER TABLE `lc_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `lc_employees`
--
ALTER TABLE `lc_employees`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `lc_material`
--
ALTER TABLE `lc_material`
  ADD PRIMARY KEY (`mt_id`);

--
-- Indexes for table `lc_product`
--
ALTER TABLE `lc_product`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `p_category` (`p_category`);

--
-- Indexes for table `lc_size`
--
ALTER TABLE `lc_size`
  ADD PRIMARY KEY (`sz_id`);

--
-- Indexes for table `lc_stock`
--
ALTER TABLE `lc_stock`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `st_product` (`st_product`),
  ADD KEY `st_material` (`st_material`),
  ADD KEY `st_size` (`st_size`),
  ADD KEY `st_category` (`st_category`);

--
-- Indexes for table `lc_stock_history`
--
ALTER TABLE `lc_stock_history`
  ADD PRIMARY KEY (`sh_id`),
  ADD KEY `sh_material` (`sh_material`),
  ADD KEY `sh_size` (`sh_size`),
  ADD KEY `sh_category` (`sh_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lc_auth`
--
ALTER TABLE `lc_auth`
  MODIFY `auth_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1235;

--
-- AUTO_INCREMENT for table `lc_bills`
--
ALTER TABLE `lc_bills`
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_category`
--
ALTER TABLE `lc_category`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_employees`
--
ALTER TABLE `lc_employees`
  MODIFY `e_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509877;

--
-- AUTO_INCREMENT for table `lc_material`
--
ALTER TABLE `lc_material`
  MODIFY `mt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_product`
--
ALTER TABLE `lc_product`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lc_size`
--
ALTER TABLE `lc_size`
  MODIFY `sz_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lc_stock`
--
ALTER TABLE `lc_stock`
  MODIFY `st_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lc_stock_history`
--
ALTER TABLE `lc_stock_history`
  MODIFY `sh_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lc_product`
--
ALTER TABLE `lc_product`
  ADD CONSTRAINT `lc_product_ibfk_1` FOREIGN KEY (`p_category`) REFERENCES `lc_category` (`cat_id`);

--
-- Constraints for table `lc_stock`
--
ALTER TABLE `lc_stock`
  ADD CONSTRAINT `lc_stock_ibfk_1` FOREIGN KEY (`st_product`) REFERENCES `lc_product` (`p_id`),
  ADD CONSTRAINT `lc_stock_ibfk_2` FOREIGN KEY (`st_material`) REFERENCES `lc_material` (`mt_id`),
  ADD CONSTRAINT `lc_stock_ibfk_3` FOREIGN KEY (`st_size`) REFERENCES `lc_size` (`sz_id`),
  ADD CONSTRAINT `lc_stock_ibfk_4` FOREIGN KEY (`st_category`) REFERENCES `lc_category` (`cat_id`);

--
-- Constraints for table `lc_stock_history`
--
ALTER TABLE `lc_stock_history`
  ADD CONSTRAINT `lc_stock_history_ibfk_1` FOREIGN KEY (`sh_material`) REFERENCES `lc_material` (`mt_id`),
  ADD CONSTRAINT `lc_stock_history_ibfk_2` FOREIGN KEY (`sh_size`) REFERENCES `lc_size` (`sz_id`),
  ADD CONSTRAINT `lc_stock_history_ibfk_3` FOREIGN KEY (`sh_category`) REFERENCES `lc_category` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
