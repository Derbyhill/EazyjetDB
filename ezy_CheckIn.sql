-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2018 at 11:23 AM
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
-- Table structure for table `ezy_CheckIn`
--

CREATE TABLE `ezy_CheckIn` (
  `CheckInID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `PassangerID` int(11) NOT NULL,
  `CheckInStatusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ezy_CheckIn`
--
ALTER TABLE `ezy_CheckIn`
  ADD PRIMARY KEY (`CheckInID`),
  ADD KEY `FK_CheckInStatus` (`CheckInStatusID`),
  ADD KEY `FK_Flight` (`FlightID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ezy_CheckIn`
--
ALTER TABLE `ezy_CheckIn`
  MODIFY `CheckInID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ezy_CheckIn`
--
ALTER TABLE `ezy_CheckIn`
  ADD CONSTRAINT `FK_CheckInStatus` FOREIGN KEY (`CheckInStatusID`) REFERENCES `ezy_CheckInStatus` (`CheckInStatusID`),
  ADD CONSTRAINT `FK_Flight` FOREIGN KEY (`FlightID`) REFERENCES `ezy_Flight` (`FlightID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
