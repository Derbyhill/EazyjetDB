-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2018 at 10:22 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drice21`
--

-- --------------------------------------------------------

--
-- Table structure for table `exy_Customers`
--

CREATE TABLE `exy_Customers` (
  `CustomerID` int(11) NOT NULL,
  `TitleID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `EmailAddress` varchar(255) NOT NULL,
  `AddressID` int(11) NOT NULL,
  `ContactTelINumID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exy_Customers`
--

INSERT INTO `exy_Customers` (`CustomerID`, `TitleID`, `FirstName`, `LastName`, `EmailAddress`, `AddressID`, `ContactTelINumID`) VALUES
(2, 3, 'Dearbháil', 'Rice', 'drice21@qub.ac.uk', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exy_Customers`
--
ALTER TABLE `exy_Customers`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `FK_AddressID` (`AddressID`),
  ADD KEY `FK_TitleID` (`TitleID`),
  ADD KEY `FK_ContactTelNumID` (`ContactTelINumID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exy_Customers`
--
ALTER TABLE `exy_Customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exy_Customers`
--
ALTER TABLE `exy_Customers`
  ADD CONSTRAINT `FK_AddressID` FOREIGN KEY (`AddressID`) REFERENCES `ezy_Address` (`AddressID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ContactTelNumID` FOREIGN KEY (`ContactTelINumID`) REFERENCES `ezy_ContactTelNum` (`ContactTelNumID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TitleID` FOREIGN KEY (`TitleID`) REFERENCES `exy_Title` (`TitleID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
