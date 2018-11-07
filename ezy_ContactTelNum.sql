-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2018 at 10:21 AM
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
-- Table structure for table `ezy_ContactTelNum`
--

CREATE TABLE `ezy_ContactTelNum` (
  `ContactTelNumID` int(11) NOT NULL,
  `CountryTelCodeID` int(11) NOT NULL,
  `ContactNum` bigint(255) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_ContactTelNum`
--

INSERT INTO `ezy_ContactTelNum` (`ContactTelNumID`, `CountryTelCodeID`, `ContactNum`, `CustomerID`) VALUES
(1, 3, 7570809307, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ezy_ContactTelNum`
--
ALTER TABLE `ezy_ContactTelNum`
  ADD PRIMARY KEY (`ContactTelNumID`),
  ADD KEY `FK_CountryTelCodeID` (`CountryTelCodeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ezy_ContactTelNum`
--
ALTER TABLE `ezy_ContactTelNum`
  MODIFY `ContactTelNumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ezy_ContactTelNum`
--
ALTER TABLE `ezy_ContactTelNum`
  ADD CONSTRAINT `FK_CountryTelCodeID` FOREIGN KEY (`CountryTelCodeID`) REFERENCES `ezy_CountryTelCode` (`CountryTelCodeID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
