-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2018 at 11:54 AM
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
-- Table structure for table `ezy_Country`
--

CREATE TABLE `ezy_Country` (
  `CountryID` int(11) NOT NULL,
  `CountryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_Country`
--

INSERT INTO `ezy_Country` (`CountryID`, `CountryName`) VALUES
(1, 'Ireland'),
(2, 'United Kingdom'),
(3, 'Northern Ireland'),
(4, 'Afghanistan'),
(5, 'Australia'),
(6, 'Aruba'),
(7, 'Bahamas'),
(8, 'Botswana'),
(9, 'Burundi'),
(10, 'Cambodia'),
(11, 'Colombia'),
(12, 'Czech Republic'),
(13, 'Denmark'),
(14, 'Dominica'),
(15, 'Dominican Republic'),
(16, 'Ecuador'),
(17, 'Estonia'),
(18, 'Fiji'),
(19, 'France'),
(20, 'Germany '),
(21, 'Ghana'),
(22, 'Hatii'),
(23, 'Hungry'),
(24, 'Iceland'),
(25, 'India'),
(26, 'Jamaica'),
(27, 'Japan'),
(28, 'kuwait'),
(29, 'Kenya'),
(30, 'Laos'),
(31, 'Luexembourg'),
(32, 'Macau'),
(33, 'Mexico'),
(34, 'Netherlands'),
(35, 'New Zealand'),
(36, 'Oman'),
(37, 'Pakistan'),
(38, 'Peru'),
(39, 'Qatar'),
(40, 'Russia'),
(41, 'Romania'),
(42, 'Samoa'),
(43, 'Serbia'),
(44, 'Thailand'),
(45, 'Tonga'),
(46, 'United States'),
(47, 'Ukraine'),
(48, 'Viet Nam'),
(49, 'Western Sahara'),
(50, 'Yemen'),
(51, 'Zimbabwe'),
(52, 'Austria'),
(53, 'Croatia'),
(54, 'Italy'),
(55, 'Poland'),
(56, 'Portugal'),
(57, 'Spain'),
(58, 'Switzerland');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ezy_Country`
--
ALTER TABLE `ezy_Country`
  ADD PRIMARY KEY (`CountryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ezy_Country`
--
ALTER TABLE `ezy_Country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
