-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2018 at 05:03 PM
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
-- Table structure for table `ezy_AircraftType`
--

CREATE TABLE `ezy_AircraftType` (
  `AircraftTypeID` int(11) NOT NULL,
  `AircraftTypeName` varchar(255) NOT NULL,
  `MaxCapacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_AircraftType`
--

INSERT INTO `ezy_AircraftType` (`AircraftTypeID`, `AircraftTypeName`, `MaxCapacity`) VALUES
(1, 'Airbus 319', NULL),
(2, 'Airbus 320', NULL),
(3, 'Airbus 320 neo', NULL),
(4, 'Airbus 321 neo', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ezy_AircraftType`
--
ALTER TABLE `ezy_AircraftType`
  ADD PRIMARY KEY (`AircraftTypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ezy_AircraftType`
--
ALTER TABLE `ezy_AircraftType`
  MODIFY `AircraftTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
