-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 07:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancemsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`) VALUES
(1, 'Admin', 'Zacks', 'admin@gmail.com', 'D00F5D5217896FB7FD601412CB890830');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `tblattendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `sessionTermId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateTimeTaken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `tblattendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(162, 'PSC/2019/10159', '4', '6', '1', '1', '2024-06-09'),
(163, 'PSC/2019/11161', '4', '6', '1', '0', '2024-06-09'),
(0, 'PSC/2019/00005', '6', '11', '4', '1', '2024-06-09'),
(0, 'PSC/2019/00008', '6', '11', '4', '1', '2024-06-09'),
(0, 'PSC/2019/00012', '6', '0', '4', '0', '2024-06-10'),
(0, 'PSC/2019/00005', '6', '11', '4', '1', '2024-06-10'),
(0, 'PSC/2019/00008', '6', '11', '4', '1', '2024-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `Id` int(10) NOT NULL,
  `className` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`Id`, `className`) VALUES
(6, 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassarms`
--

CREATE TABLE `tblclassarms` (
  `Id` int(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmName` varchar(255) NOT NULL,
  `isAssigned` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassarms`
--

INSERT INTO `tblclassarms` (`Id`, `classId`, `classArmName`, `isAssigned`) VALUES
(10, '6', 'Machine Learning', '1'),
(9, '6', 'Data Analysis', '0'),
(7, '6', 'Cyber Security', '0'),
(8, '6', 'Software Engineering', '0'),
(11, '6', 'Artficial Intelligence', '1'),
(12, '6', 'Data Science', '1'),
(0, '6', 'Cloud Computer', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `tblclassteacher` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classArmId`, `dateCreated`) VALUES
(9, 'Zakaria', 'Abubakar', 'admin@gmail.com', '32250170a0dca92d53ec9624f336ca24', '08064005097', '6', '11', '2024-06-09'),
(8, 'Muhammad', 'Nasir', 'mnass@gmail.com', '32250170a0dca92d53ec9624f336ca24', '08147864149', '6', '10', '2024-06-09'),
(0, 'Musab', 'Umair', 'musab@gmail.com', '32250170a0dca92d53ec9624f336ca24', '08064005098', '6', '12', '2024-06-09'),
(0, 'Abubakar', 'Dan sarki', 'dansarki@gmail.com', '32250170a0dca92d53ec9624f336ca24', '09128285577`', '6', '0', '2024-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessionterm`
--

CREATE TABLE `tblsessionterm` (
  `Id` int(10) NOT NULL,
  `sessionName` varchar(50) NOT NULL,
  `termId` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsessionterm`
--

INSERT INTO `tblsessionterm` (`Id`, `sessionName`, `termId`, `isActive`, `dateCreated`) VALUES
(4, '2019/2024', '2', '1', '2024-06-09'),
(0, '2021/2024', '1', '0', '2024-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`Id`, `firstName`, `lastName`, `otherName`, `admissionNumber`, `password`, `classId`, `classArmId`, `dateCreated`) VALUES
(1, 'Aliyu', 'Zakaria', '', 'PSC/2019/00001', '12345', '6', '9', '2024-06-09'),
(2, 'Yusuf', 'Surajo', '', 'PSC/2019/00002', '12345', '6', '8', '2024-06-09'),
(0, 'Muhammad', 'Auwal', 'Karshi', 'CSA/2021/19987', '12345', '6', '12', '2024-06-09'),
(0, 'Aishatu', 'Dikko', 'Muhammad', 'PSC/2021/19663', '12345', '6', '8', '2024-06-09'),
(0, 'Janniper', 'Lopez', '', 'PSC/2019/00003', '12345', '6', '9', '2024-06-09'),
(0, 'Khadija', 'Saleh', 'KT', 'PSC/2019/00004', '12345', '6', '7', '2024-06-09'),
(0, 'Huzaifa', 'Kabeer', 'KD', 'PSC/2019/00005', '12345', '6', '11', '2024-06-09'),
(0, 'Yusra', 'Ahmad', '', 'PSC/2019/00006', '12345', '6', '9', '2024-06-09'),
(0, 'Abubakar', 'Madobi', 'Kano', 'PSC/2019/00007', '12345', '6', '8', '2024-06-09'),
(0, 'Najaatu', 'Sulaiman', 'Malumpashi', 'PSC/2019/00008', '12345', '6', '11', '2024-06-09'),
(0, 'Bashir', 'Sani', '', 'CSA/2021/232390', '12345', '6', '8', '2024-06-09'),
(0, 'Ahmad', 'Zamfara', '', 'PSC/2019/00012', '12345', '6', '0', '2024-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

CREATE TABLE `tblterm` (
  `Id` int(10) NOT NULL,
  `termName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`Id`, `termName`) VALUES
(1, 'First Samester'),
(2, 'Second Samester'),
(3, 'Third Samester');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
