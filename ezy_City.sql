-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2018 at 10:21 AM
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
-- Table structure for table `ezy_City`
--

CREATE TABLE `ezy_City` (
  `CityID` int(11) NOT NULL,
  `CityName` varchar(255) NOT NULL,
  `CountryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_City`
--

INSERT INTO `ezy_City` (`CityID`, `CityName`, `CountryID`) VALUES
(1, 'Alicante', NULL),
(2, 'Amsterdam', NULL),
(3, 'Barcelona', NULL),
(4, 'Birmingham', NULL),
(5, 'Bordeaux', NULL),
(6, 'Bristol', NULL),
(7, 'Canary Island', NULL),
(8, 'central Scotland', NULL),
(9, 'Dubrovnik', NULL),
(10, 'Edinburgh', NULL),
(11, 'Faro', NULL),
(13, 'Geneva', NULL),
(14, 'Glasgow', NULL),
(15, 'Ibiza', NULL),
(16, 'Isle Of Man', NULL),
(17, 'Jersey', NULL),
(18, 'Krakow', NULL),
(20, 'Liverpool', NULL),
(21, 'London', NULL),
(22, 'Lyon', NULL),
(23, 'Majorca Palma', NULL),
(24, 'Malaga', 0),
(25, 'Naples', NULL),
(26, 'Newcastle', NULL),
(27, 'Nice', NULL),
(28, 'Paris', 0),
(29, 'Prague', 0),
(30, 'Reykjavik Keflavik', 0),
(31, 'Salzburg', 0),
(32, 'Split', 0),
(33, 'Valencia', 0),
(34, 'Venice', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ezy_City`
--
ALTER TABLE `ezy_City`
  ADD PRIMARY KEY (`CityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ezy_City`
--
ALTER TABLE `ezy_City`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
