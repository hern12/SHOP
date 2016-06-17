-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2016 at 12:05 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h&bstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `CategoryID` char(50) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `ImgUrl` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  `UnitPrice` int(11) DEFAULT NULL,
  `UnitsInStock` int(11) DEFAULT NULL,
  `IsActive` varchar(1) DEFAULT NULL,
  `Dates` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `CategoryID`, `ProductName`, `ImgUrl`, `UnitPrice`, `UnitsInStock`, `IsActive`, `Dates`) VALUES
(1, 'สุขภาพ', 'Lorem Ipsum', NULL, 1000, 1, NULL, '0000-00-00'),
(2, 'สุขภาพ', 'ttrtertertertertertert', NULL, NULL, NULL, NULL, '0000-00-00'),
(3, '', 'sfsfsafafsafsafsa', 'images/2.jpg', 2000, NULL, NULL, '0000-00-00'),
(4, '', 'sfsfsafafsafsafsa', 'images/2.jpg', 2000, NULL, NULL, '0000-00-00'),
(7, '', 'asdsadsa', 'images/3.jpg', 4000, 1, NULL, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
