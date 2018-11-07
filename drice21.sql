-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2018 at 11:40 AM
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
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `idaccount` int(11) NOT NULL,
  `balance` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`idaccount`, `balance`) VALUES
(18, '0');

-- --------------------------------------------------------

--
-- Table structure for table `CMSUser`
--

CREATE TABLE `CMSUser` (
  `UserID` int(10) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `UserDisplayName` varchar(250) NOT NULL,
  `UserRoleID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CMSUser`
--

INSERT INTO `CMSUser` (`UserID`, `UserName`, `UserDisplayName`, `UserRoleID`) VALUES
(1, 'Dearbhail', 'Derby', 2),
(2, 'KatieA', 'KA', 4),
(3, 'AlisonE', 'AE', 1),
(4, 'CrystalF', 'CF', 3),
(6, 'dea', '56ab24c15b72a457069c5ea42fcfc640', 2);

-- --------------------------------------------------------

--
-- Table structure for table `CMSUserRole`
--

CREATE TABLE `CMSUserRole` (
  `UserRoleID` int(10) NOT NULL,
  `UserRoleName` varchar(250) NOT NULL,
  `UserRoleDesc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CMSUserRole`
--

INSERT INTO `CMSUserRole` (`UserRoleID`, `UserRoleName`, `UserRoleDesc`) VALUES
(1, 'Editor', 'Does edity things '),
(2, 'admin', 'does adminy things'),
(3, 'publisher', 'does publisery things'),
(4, 'advertiser', 'does advertisery things');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL,
  `customerName` varchar(45) DEFAULT NULL,
  `customerAddressID` varchar(45) DEFAULT NULL,
  `customerAccountID` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idcustomer`, `customerName`, `customerAddressID`, `customerAccountID`) VALUES
(28, 'James Hillier', '18', '18'),
(29, 'James Bond', '18', '18');

-- --------------------------------------------------------

--
-- Table structure for table `customerAddress`
--

CREATE TABLE `customerAddress` (
  `idnew_table` int(11) NOT NULL,
  `houseName` varchar(45) DEFAULT NULL,
  `houseNumber` varchar(45) DEFAULT NULL,
  `streetLine1` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerAddress`
--

INSERT INTO `customerAddress` (`idnew_table`, `houseName`, `houseNumber`, `streetLine1`) VALUES
(18, '', '22', 'Dublin Road');

-- --------------------------------------------------------

--
-- Table structure for table `demo_user`
--

CREATE TABLE `demo_user` (
  `userID` int(11) NOT NULL,
  `user First Name` varchar(255) NOT NULL,
  `user Second Name` varchar(255) NOT NULL,
  `username` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Hobbies`
--

CREATE TABLE `Hobbies` (
  `HobbyID` int(11) NOT NULL,
  `HobbyName` varchar(255) NOT NULL,
  `HobbyDesc` varchar(2550) DEFAULT NULL,
  `HobbyTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Hobbies`
--

INSERT INTO `Hobbies` (`HobbyID`, `HobbyName`, `HobbyDesc`, `HobbyTypeID`) VALUES
(1, 'Larping', NULL, 1),
(2, 'kab brew', NULL, 1),
(3, 'kab brew', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `HobbyType`
--

CREATE TABLE `HobbyType` (
  `HobbyTypeID` int(11) NOT NULL,
  `HobbyTypeName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HobbyType`
--

INSERT INTO `HobbyType` (`HobbyTypeID`, `HobbyTypeName`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `PersonID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `SecondName` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Person`
--

INSERT INTO `Person` (`PersonID`, `FirstName`, `SecondName`, `Gender`) VALUES
(1, 'derby', 'Hill', 'F'),
(2, 'Ali', 'Ear', '');

-- --------------------------------------------------------

--
-- Table structure for table `PersonHobby`
--

CREATE TABLE `PersonHobby` (
  `PersonHobbyID` int(11) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `HobbyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PersonHobby`
--

INSERT INTO `PersonHobby` (`PersonHobbyID`, `PersonID`, `HobbyID`) VALUES
(1, 2, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`idaccount`);

--
-- Indexes for table `CMSUser`
--
ALTER TABLE `CMSUser`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `FK_UserRoleID` (`UserRoleID`);

--
-- Indexes for table `CMSUserRole`
--
ALTER TABLE `CMSUserRole`
  ADD PRIMARY KEY (`UserRoleID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idcustomer`);

--
-- Indexes for table `customerAddress`
--
ALTER TABLE `customerAddress`
  ADD PRIMARY KEY (`idnew_table`);

--
-- Indexes for table `demo_user`
--
ALTER TABLE `demo_user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `Hobbies`
--
ALTER TABLE `Hobbies`
  ADD PRIMARY KEY (`HobbyID`),
  ADD KEY `FK_HobbyType` (`HobbyTypeID`);

--
-- Indexes for table `HobbyType`
--
ALTER TABLE `HobbyType`
  ADD PRIMARY KEY (`HobbyTypeID`);

--
-- Indexes for table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indexes for table `PersonHobby`
--
ALTER TABLE `PersonHobby`
  ADD PRIMARY KEY (`PersonHobbyID`),
  ADD KEY `FK_Person` (`PersonID`),
  ADD KEY `FK_HoppyID` (`HobbyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `idaccount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `CMSUser`
--
ALTER TABLE `CMSUser`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `CMSUserRole`
--
ALTER TABLE `CMSUserRole`
  MODIFY `UserRoleID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `idcustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customerAddress`
--
ALTER TABLE `customerAddress`
  MODIFY `idnew_table` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `demo_user`
--
ALTER TABLE `demo_user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Hobbies`
--
ALTER TABLE `Hobbies`
  MODIFY `HobbyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `HobbyType`
--
ALTER TABLE `HobbyType`
  MODIFY `HobbyTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Person`
--
ALTER TABLE `Person`
  MODIFY `PersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `PersonHobby`
--
ALTER TABLE `PersonHobby`
  MODIFY `PersonHobbyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CMSUser`
--
ALTER TABLE `CMSUser`
  ADD CONSTRAINT `FK_UserRoleID` FOREIGN KEY (`UserRoleID`) REFERENCES `CMSUserRole` (`UserRoleID`);

--
-- Constraints for table `Hobbies`
--
ALTER TABLE `Hobbies`
  ADD CONSTRAINT `FK_HobbyType` FOREIGN KEY (`HobbyTypeID`) REFERENCES `HobbyType` (`HobbyTypeID`);

--
-- Constraints for table `PersonHobby`
--
ALTER TABLE `PersonHobby`
  ADD CONSTRAINT `FK_HoppyID` FOREIGN KEY (`HobbyID`) REFERENCES `Hobbies` (`HobbyID`),
  ADD CONSTRAINT `FK_Person` FOREIGN KEY (`PersonID`) REFERENCES `Person` (`PersonID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
