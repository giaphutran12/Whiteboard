-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2021 at 06:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whiteboard`
--
CREATE DATABASE IF NOT EXISTS `whiteboard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `whiteboard`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` int(11) NOT NULL,
  `contactName` varchar(1000) NOT NULL,
  `contactLocal` varchar(50) NOT NULL,
  `contactCell` varchar(50) NOT NULL,
  `updateDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactID`, `contactName`, `contactLocal`, `contactCell`, `updateDate`) VALUES
(1, 'ITS Spare Phone', '', '604-418-4669', ''),
(2, 'ITS Student Assistant (CO)', '', '604-306-4777', ''),
(3, 'ITS Student Assistant (NW)', '', '604-396-4475', ''),
(4, 'Classroom Hotline', '5333', '', ''),
(5, 'Service Desk (Main Number)', '5330', '', ''),
(6, 'Service Desk Hotline (ITS staff use only)', '5803', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `local` varchar(50) NOT NULL,
  `cell` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `updateDate` varchar(50) NOT NULL,
  `team` varchar(1000) NOT NULL,
  `isManager` varchar(10) NOT NULL,
  `isFieldTech` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--
INSERT INTO `person` (`id`, `name`, `local`, `cell`, `status`, `comment`, `updateDate`, `team`, `isManager`, `isFieldTech`) VALUES
(1, 'Vito Genovese', '5490', '604-396-4739', 'OUT', '', '2021-10-22 10:33:04', 'Administration', 'Yes', 'No'),
(2, 'John Gotti', '5621', '604-441-2581', 'NW', '', '2021-11-18 13:18:41', 'Administration', 'Yes', 'No'),
(3, 'Lucky Luciano', '5827', '778-710-1954', 'NW', '', '2021-11-19 09:41:09', 'IS - Communications & Id Management, IS - Physical', 'Yes', 'No'),
(4, 'Al Capone', '6174', '604-396-3567', 'COQ', '', '2021-10-20 14:08:10', 'Desktop - DL', 'No', 'Yes'),
(5, 'Frank Costello', '4985', '778-384-8432', 'WFH', '', '2021-11-18 11:40:27', 'LMS', 'No', 'No'),
(6, 'Carlo Gambino', '5559', '', 'OUT', '', '2021-11-18 14:26:09', 'App Services', 'No', 'No'),
(7, 'Joe Masseria', '5213', '778-384-2168', 'WFH', '', '2021-11-19 09:51:00', 'Security', 'No', 'No'),
(8, 'Salvatore Maranzano', '5090', '604-307-1872', 'NW', '', '2021-11-09 10:32:30', 'Administration', 'No', 'No'),
(9, 'Vincent Gigante', '5428', '604-374-1890', 'NW', '', '2021-11-09 10:32:50', 'Endpoint', 'No', 'No'),
(10, 'Paul Castellano', '5329', '', 'NW', '', '2021-11-09 10:38:17', 'App Services', 'No', 'No'),
(11, 'Joseph Bonanno', '5133', '604-218-6832', 'COQ', '', '2021-11-09 10:42:56', 'Desktop - DL', 'No', 'Yes'),
(12, 'Anthony Casso', '5473', '', 'NW', '', '2021-10-14 12:37:47', 'LMS', 'No', 'No'),
(13, 'Meyer Lansky', '', '', 'OUT', '', '2021-11-19 09:45:12', 'AV Integration, AV Production, Learning Designers', 'Yes', 'No'),
(14, 'Tommy Lucchese', '4955', '604-306-2937', 'NW', '', '2021-11-09 10:40:07', 'IS - Communications & Id Management', 'No', 'No'),
(15, 'Sam Giancana', '', '', 'WFH', '', '2021-11-19 08:24:34', 'Service Desk', 'No', 'No');
-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shiftID` int(11) NOT NULL,
  `shiftName` varchar(1000) NOT NULL,
  `fieldTechName` varchar(1000) NOT NULL,
  `updateShiftDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shiftID`, `shiftName`, `fieldTechName`, `updateShiftDate`) VALUES
(1, 'NW Primary Field Tech', 'Vito Genovese', '2021-11-19 07:54:28'),
(2, 'NW Backup Field Tech', 'Meyer Lansky', '2021-11-19 08:44:31'),
(3, 'NW Night Field Tech', '', '2021-11-09 11:24:45'),
(4, 'COQ Primary Field Tech', '', '2021-11-09 15:17:33'),
(5, 'COQ Backup Field Tech', '', '2021-11-09 15:17:43'),
(6, 'COQ Night Field Tech', '', '2021-11-09 11:24:50'),
(7, 'TTG Technicians', '', '2021-11-09 11:24:50'),
(8,'Anvil Primary Field Tech','','2021-11-09 11:24:50');

-- 
--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shiftID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shiftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
