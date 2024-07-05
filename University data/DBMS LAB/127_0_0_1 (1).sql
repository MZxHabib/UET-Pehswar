-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 09:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zainlab4`
--
CREATE DATABASE IF NOT EXISTS `zainlab4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `zainlab4`;

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE `entry` (
  `MemberID` int(11) NOT NULL,
  `TourID` int(11) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`MemberID`, `TourID`, `Year`) VALUES
(118, 24, 2013),
(228, 24, 2014),
(228, 25, 2014),
(228, 36, 2014),
(235, 38, 2012),
(235, 38, 2014),
(235, 40, 2013),
(235, 40, 2014),
(239, 25, 2014),
(239, 40, 2012),
(258, 24, 2013),
(258, 38, 2013),
(286, 24, 2012),
(286, 24, 2013),
(286, 24, 2014),
(415, 25, 2014),
(415, 36, 2013),
(415, 36, 2014),
(415, 36, 2012),
(415, 38, 2012),
(415, 38, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MemberID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Phone` int(11) NOT NULL,
  `handicap` int(11) NOT NULL,
  `JoinDate` date NOT NULL,
  `Coach` int(11) NOT NULL,
  `Team` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `MemberType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `FirstName`, `LastName`, `Phone`, `handicap`, `JoinDate`, `Coach`, `Team`, `Gender`, `MemberType`) VALUES
(118, 'Melissa', 'McKenzie', 963270, 30, '2009-05-10', 153, '', 'F', 'Junior'),
(138, 'Michael', 'Stone', 983223, 30, '2013-05-13', 0, '', 'M', 'Senior'),
(153, 'Brenda', 'Nolan', 442649, 11, '2010-07-25', 0, 'TeamB', 'F', 'Senior'),
(176, 'Helen', 'Branch', 589419, 0, '2015-11-18', 0, '', 'F', 'Senior'),
(178, 'Sarah', 'Beck', 226596, 0, '2014-01-06', 0, '', 'F', 'Social'),
(228, 'Sandra', 'Burton', 244493, 26, '2015-01-21', 153, '', 'F', 'Junior'),
(235, 'William', 'Cooper', 722954, 14, '0000-00-00', 153, 'TeamB', 'M', 'Senior'),
(239, 'Thomas', 'Spence', 697720, 10, '2002-06-04', 0, '', 'M', 'Senior'),
(258, 'Barbara', 'Olson', 370186, 16, '2011-07-15', 0, '', 'F', 'Senior'),
(286, 'Robert', 'Pollard', 617681, 19, '2015-07-26', 235, 'TeamB', 'M', 'Junior'),
(290, 'Thomas', 'Buxton', 268936, 26, '2012-07-10', 235, '', 'M', 'Senior'),
(323, 'Daniel', 'Wilcox', 665993, 3, '2013-04-30', 0, 'TeamA', 'M', 'Senior'),
(331, 'Thomas', 'Schimt', 867492, 25, '2013-03-20', 153, '', 'M', 'Senior'),
(332, 'Deborah', 'Bridges', 279080, 12, '2011-03-05', 253, '', 'F', 'Senior'),
(339, 'Betty', 'Young', 50813, 21, '2013-03-12', 0, 'TeamB', 'F', 'Senior'),
(414, 'Jane', 'Gilmore', 459558, 5, '2011-05-12', 153, 'TeamA', 'F', 'Junior'),
(415, 'William', 'Taylor', 137353, 7, '2011-11-09', 235, 'TeamA', 'M', 'Senior'),
(461, 'Robert', 'Reed', 994664, 3, '2009-07-18', 235, 'TeamA', 'M', 'Senior'),
(469, 'Carolyn', 'Willis', 688378, 29, '2014-12-27', 0, '', 'F', 'Junior'),
(487, 'Susan', 'Kent', 707217, 0, '2014-09-19', 0, '', 'F', 'Social');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `TeamName` varchar(100) NOT NULL,
  `PracticeNight` varchar(100) NOT NULL,
  `Manager` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TeamName`, `PracticeNight`, `Manager`) VALUES
('TeamA', 'Teusday', 239),
('TeamB', 'Monday', 153);

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `TourID` int(11) NOT NULL,
  `TourName` varchar(100) NOT NULL,
  `TourType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tournament`
--

INSERT INTO `tournament` (`TourID`, `TourName`, `TourType`) VALUES
(24, 'Leestin', 'Social'),
(25, 'Kaiapoi', 'Social'),
(36, 'WestCost', 'Social'),
(38, 'Canterburry', 'open'),
(40, 'Otago', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `Type` varchar(100) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`Type`, `fee`) VALUES
('Associate', 80),
('Junior', 150),
('Senior', 300),
('Social', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entry`
--
ALTER TABLE `entry`
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `TourID` (`TourID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MemberID`),
  ADD KEY `fk` (`MemberType`),
  ADD KEY `Coach` (`Coach`),
  ADD KEY `Team` (`Team`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamName`),
  ADD KEY `Manager` (`Manager`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`TourID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Type`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entry`
--
ALTER TABLE `entry`
  ADD CONSTRAINT `entry_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`),
  ADD CONSTRAINT `entry_ibfk_2` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`Manager`) REFERENCES `member` (`MemberID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
