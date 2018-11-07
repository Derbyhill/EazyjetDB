-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2018 at 09:10 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `exy_Title`
--

CREATE TABLE `exy_Title` (
  `TitleID` int(11) NOT NULL,
  `TitleName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exy_Title`
--

INSERT INTO `exy_Title` (`TitleID`, `TitleName`) VALUES
(1, 'Mr'),
(2, 'Mrs'),
(3, 'Miss'),
(4, 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `ezy_Address`
--

CREATE TABLE `ezy_Address` (
  `AddressID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Town/City` varchar(255) NOT NULL,
  `County` varchar(255) NOT NULL,
  `Postcode/Zip` varchar(255) NOT NULL,
  `CountryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_Address`
--

INSERT INTO `ezy_Address` (`AddressID`, `Address`, `Town/City`, `County`, `Postcode/Zip`, `CountryID`) VALUES
(1, '53 Lisburn Ave.', 'Belfast', 'Antrim', 'BT9 7FX', 3);

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

-- --------------------------------------------------------

--
-- Table structure for table `ezy_Airport`
--

CREATE TABLE `ezy_Airport` (
  `AirportID` int(11) NOT NULL,
  `AirportName` varchar(255) DEFAULT NULL,
  `AirportCode` varchar(255) NOT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Longitude` varchar(255) DEFAULT NULL,
  `CityID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_Airport`
--

INSERT INTO `ezy_Airport` (`AirportID`, `AirportName`, `AirportCode`, `Latitude`, `Longitude`, `CityID`, `CountryID`) VALUES
(9, 'W.A. Mozart', 'SZG', '47.7926° N ', '13.0029° E', 31, 52),
(10, 'Dubrovnik', 'DBV', '42.5602° N', '18.2622° E', 9, 53),
(11, 'Split', 'SPU', '43.5384° N', '16.2983° E', 32, 53),
(12, 'Ruzyne', 'PRG', '50.1018° N', '14.2632° E', 29, 12),
(13, 'Bordeaux Airport', 'BOD', '44.8306° N', '0.7103° W', 5, 19),
(14, 'Lyon Saint Exupéry Airport', 'LYS', '45.7234° N', '5.0888° E', 22, 19),
(15, 'Cote D\'Azur', 'NCE', '43.6598° N', '7.2148° E', 27, 19),
(16, 'Charles De Gaulle', 'CDG', '49.0097° N', '2.5479° E', 28, 19),
(17, 'Keflavik International', 'KEF', '63.9786° N', '22.6350° W', 30, 24),
(18, 'Naples', 'NAP', '40.8847° N', '14.2892° E', 25, 54),
(19, 'Marco Polo', 'VCE', '45.5063° N', '12.3475° E', 34, 54),
(20, 'Schiphol', 'AMS', '52.3105° N', '4.7683° E', 2, 34),
(21, 'J. Paul II Balice International', 'KRK', '50.0770° N', '19.7881° E', 18, 55),
(22, 'Aeroporto Internacional de Faro', 'FAO', '37.008666632 N\r\n', ' 7.959496162 W', 11, 56),
(23, 'El Altet Airport', 'ALC', '38.2855° N ', '0.5601° W', 1, 57),
(24, 'Barcelona', 'BCN', '41.2974° N', '2.0833° E', 3, 57),
(25, 'Fuerteventura', 'FUE', '28.4524° N', '13.8669° W', 7, 57);

-- --------------------------------------------------------

--
-- Table structure for table `ezy_City`
--

CREATE TABLE `ezy_City` (
  `CityID` int(11) NOT NULL,
  `CityName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_City`
--

INSERT INTO `ezy_City` (`CityID`, `CityName`) VALUES
(1, 'Alicante'),
(2, 'Amsterdam'),
(3, 'Barcelona'),
(4, 'Birmingham'),
(5, 'Bordeaux'),
(6, 'Bristol'),
(7, 'Canary Island'),
(8, 'central Scotland'),
(9, 'Dubrovnik'),
(10, 'Edinburgh'),
(11, 'Faro'),
(13, 'Geneva'),
(14, 'Glasgow'),
(15, 'Ibiza'),
(16, 'Isle Of Man'),
(17, 'Jersey'),
(18, 'Krakow'),
(20, 'Liverpool'),
(21, 'London'),
(22, 'Lyon'),
(23, 'Majorca Palma'),
(24, 'Malaga'),
(25, 'Naples'),
(26, 'Newcastle'),
(27, 'Nice'),
(28, 'Paris'),
(29, 'Prague'),
(30, 'Reykjavik Keflavik'),
(31, 'Salzburg'),
(32, 'Split'),
(33, 'Valencia'),
(34, 'Venice');

-- --------------------------------------------------------

--
-- Table structure for table `ezy_ContactTelNum`
--

CREATE TABLE `ezy_ContactTelNum` (
  `ContactTelNumID` int(11) NOT NULL,
  `CountryTelCodeID` int(11) NOT NULL,
  `ContactNum` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_ContactTelNum`
--

INSERT INTO `ezy_ContactTelNum` (`ContactTelNumID`, `CountryTelCodeID`, `ContactNum`) VALUES
(1, 3, 7570809307);

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

-- --------------------------------------------------------

--
-- Table structure for table `ezy_CountryTelCode`
--

CREATE TABLE `ezy_CountryTelCode` (
  `CountryTelCodeID` int(11) NOT NULL,
  `CountryTelCode` int(11) NOT NULL,
  `contryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_CountryTelCode`
--

INSERT INTO `ezy_CountryTelCode` (`CountryTelCodeID`, `CountryTelCode`, `contryID`) VALUES
(1, 93, 4),
(2, 297, 6),
(3, 61, 5),
(4, 1242, 7),
(5, 267, 8),
(6, 257, 9),
(7, 855, 10),
(8, 57, 11),
(9, 420, 12),
(10, 45, 13),
(11, 1809, 14),
(12, 1809, 15),
(13, 593, 16),
(14, 372, 17),
(15, 678, 18),
(16, 33, 19),
(17, 49, 20),
(18, 233, 21),
(19, 509, 22),
(20, 36, 23),
(21, 354, 24),
(22, 91, 25),
(23, 353, 1),
(24, 1876, 26),
(25, 81, 27),
(26, 254, 29),
(27, 965, 28),
(28, 856, 30),
(29, 352, 31),
(30, 853, 32),
(31, 52, 33),
(32, 31, 34),
(33, 64, 35),
(34, 44, 3),
(35, 968, 36),
(36, 92, 37),
(37, 51, 38),
(38, 974, 39),
(39, 40, 41),
(40, 7, 40),
(41, 685, 42),
(42, 381, 43),
(43, 66, 44),
(44, 676, 45),
(45, 380, 47),
(46, 44, 2),
(47, 1, 46),
(48, 84, 48),
(49, 212, 49),
(50, 967, 50),
(51, 263, 51);

-- --------------------------------------------------------

--
-- Table structure for table `ezy_Password`
--

CREATE TABLE `ezy_Password` (
  `PasswordID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezy_Password`
--

INSERT INTO `ezy_Password` (`PasswordID`, `CustomerID`, `Password`) VALUES
(1, 2, 'Password (encrypt)');

-- --------------------------------------------------------

--
-- Table structure for table `ezy_Route`
--

CREATE TABLE `ezy_Route` (
  `RouteID` int(11) NOT NULL,
  `DepartureAirportID` int(11) NOT NULL,
  `ArrivalAirportID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ezy_Schedule`
--

CREATE TABLE `ezy_Schedule` (
  `ScheduleID` int(11) NOT NULL,
  `RouteID` int(11) NOT NULL,
  `DepartureTimeStamp` datetime NOT NULL,
  `ArrivalTimeStamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `exy_Title`
--
ALTER TABLE `exy_Title`
  ADD PRIMARY KEY (`TitleID`);

--
-- Indexes for table `ezy_Address`
--
ALTER TABLE `ezy_Address`
  ADD PRIMARY KEY (`AddressID`),
  ADD KEY `FK_CountryID` (`CountryID`);

--
-- Indexes for table `ezy_AircraftType`
--
ALTER TABLE `ezy_AircraftType`
  ADD PRIMARY KEY (`AircraftTypeID`);

--
-- Indexes for table `ezy_Airport`
--
ALTER TABLE `ezy_Airport`
  ADD PRIMARY KEY (`AirportID`),
  ADD KEY `FK_CountryID(Airport)` (`CountryID`),
  ADD KEY `FK_CityID` (`CityID`);

--
-- Indexes for table `ezy_City`
--
ALTER TABLE `ezy_City`
  ADD PRIMARY KEY (`CityID`);

--
-- Indexes for table `ezy_ContactTelNum`
--
ALTER TABLE `ezy_ContactTelNum`
  ADD PRIMARY KEY (`ContactTelNumID`),
  ADD KEY `FK_CountryTelCodeID` (`CountryTelCodeID`);

--
-- Indexes for table `ezy_Country`
--
ALTER TABLE `ezy_Country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `ezy_CountryTelCode`
--
ALTER TABLE `ezy_CountryTelCode`
  ADD PRIMARY KEY (`CountryTelCodeID`),
  ADD KEY `FK_CountryID(Tel)` (`contryID`);

--
-- Indexes for table `ezy_Password`
--
ALTER TABLE `ezy_Password`
  ADD PRIMARY KEY (`PasswordID`),
  ADD KEY `FK_CustomerID` (`CustomerID`);

--
-- Indexes for table `ezy_Route`
--
ALTER TABLE `ezy_Route`
  ADD PRIMARY KEY (`RouteID`);

--
-- Indexes for table `ezy_Schedule`
--
ALTER TABLE `ezy_Schedule`
  ADD PRIMARY KEY (`ScheduleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exy_Customers`
--
ALTER TABLE `exy_Customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exy_Title`
--
ALTER TABLE `exy_Title`
  MODIFY `TitleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ezy_Address`
--
ALTER TABLE `ezy_Address`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ezy_AircraftType`
--
ALTER TABLE `ezy_AircraftType`
  MODIFY `AircraftTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ezy_Airport`
--
ALTER TABLE `ezy_Airport`
  MODIFY `AirportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ezy_City`
--
ALTER TABLE `ezy_City`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ezy_ContactTelNum`
--
ALTER TABLE `ezy_ContactTelNum`
  MODIFY `ContactTelNumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ezy_Country`
--
ALTER TABLE `ezy_Country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `ezy_CountryTelCode`
--
ALTER TABLE `ezy_CountryTelCode`
  MODIFY `CountryTelCodeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ezy_Password`
--
ALTER TABLE `ezy_Password`
  MODIFY `PasswordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ezy_Route`
--
ALTER TABLE `ezy_Route`
  MODIFY `RouteID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezy_Schedule`
--
ALTER TABLE `ezy_Schedule`
  MODIFY `ScheduleID` int(11) NOT NULL AUTO_INCREMENT;

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

--
-- Constraints for table `ezy_Address`
--
ALTER TABLE `ezy_Address`
  ADD CONSTRAINT `FK_CountryID` FOREIGN KEY (`CountryID`) REFERENCES `ezy_Country` (`CountryID`) ON UPDATE CASCADE;

--
-- Constraints for table `ezy_Airport`
--
ALTER TABLE `ezy_Airport`
  ADD CONSTRAINT `FK_CityID` FOREIGN KEY (`CityID`) REFERENCES `ezy_City` (`CityID`),
  ADD CONSTRAINT `FK_CountryID(Airport)` FOREIGN KEY (`CountryID`) REFERENCES `ezy_Country` (`CountryID`) ON UPDATE CASCADE;

--
-- Constraints for table `ezy_ContactTelNum`
--
ALTER TABLE `ezy_ContactTelNum`
  ADD CONSTRAINT `FK_CountryTelCodeID` FOREIGN KEY (`CountryTelCodeID`) REFERENCES `ezy_CountryTelCode` (`CountryTelCodeID`) ON UPDATE CASCADE;

--
-- Constraints for table `ezy_CountryTelCode`
--
ALTER TABLE `ezy_CountryTelCode`
  ADD CONSTRAINT `FK_CountryID(Tel)` FOREIGN KEY (`contryID`) REFERENCES `ezy_Country` (`CountryID`) ON UPDATE CASCADE;

--
-- Constraints for table `ezy_Password`
--
ALTER TABLE `ezy_Password`
  ADD CONSTRAINT `FK_CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `exy_Customers` (`CustomerID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
