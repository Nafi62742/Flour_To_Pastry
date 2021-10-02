-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 08:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flour_to_pastry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `AdminName` text NOT NULL,
  `AdminPass` text NOT NULL,
  `PhoneNo` text NOT NULL,
  `AboutAdmin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `AdminName`, `AdminPass`, `PhoneNo`, `AboutAdmin`) VALUES
(1, 'Swapneel Biswas', '12345', '01549764851', 'The great team leader.');

-- --------------------------------------------------------

--
-- Table structure for table `cakeinfo`
--

CREATE TABLE `cakeinfo` (
  `CakeID` int(11) NOT NULL,
  `CakeName` text NOT NULL,
  `CakePrice` int(50) NOT NULL,
  `CakeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakeinfo`
--

INSERT INTO `cakeinfo` (`CakeID`, `CakeName`, `CakePrice`, `CakeDetails`) VALUES
(1, 'Strawberry', 400, 'Strawberry cream cake. Can be custom designed.'),
(2, 'Chocolate Cake', 399, 'Chocolate Khete onk moja'),
(3, 'Red Valvet', 500, 'Berry Alan, The fastest cake alive.');

-- --------------------------------------------------------

--
-- Table structure for table `loginstatus`
--

CREATE TABLE `loginstatus` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type2cake`
--

CREATE TABLE `type2cake` (
  `CakeId` int(11) NOT NULL,
  `CakeName` text NOT NULL,
  `CakePrice` int(50) NOT NULL,
  `CakeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type2cake`
--

INSERT INTO `type2cake` (`CakeId`, `CakeName`, `CakePrice`, `CakeDetails`) VALUES
(1, 'Blackberries', 400, 'Berry Cream');

-- --------------------------------------------------------

--
-- Table structure for table `type3cake`
--

CREATE TABLE `type3cake` (
  `CakeId` int(11) NOT NULL,
  `CakeName` text NOT NULL,
  `CakePrice` int(50) NOT NULL,
  `CakeDetails` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type3cake`
--

INSERT INTO `type3cake` (`CakeId`, `CakeName`, `CakePrice`, `CakeDetails`) VALUES
(1, 'Blackberries', 450, 'Cream'),
(2, 'Mango', 350, 'Mango cake');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pNumber` bigint(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`ID`, `Name`, `email`, `pNumber`, `password`) VALUES
(14, 'Nafi2', 'nafiahmed318@gmail.com', 12345, '1234'),
(15, 'Nafi2', 'botracer007@gmail.com', 1760887297, '12345'),
(16, 'Nafi2', 'botracer007@gmail.com', 1760887297, '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `cakeinfo`
--
ALTER TABLE `cakeinfo`
  ADD PRIMARY KEY (`CakeID`);

--
-- Indexes for table `type2cake`
--
ALTER TABLE `type2cake`
  ADD PRIMARY KEY (`CakeId`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cakeinfo`
--
ALTER TABLE `cakeinfo`
  MODIFY `CakeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type2cake`
--
ALTER TABLE `type2cake`
  MODIFY `CakeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
