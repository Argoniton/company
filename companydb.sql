-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2017 at 01:26 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `companydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Name` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Experience` varchar(100) NOT NULL,
  `Education` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Name`, `Position`, `Date`, `Experience`, `Education`) VALUES
('Artemii', 'Founder', '0000-00-00', '', 'KNU MechMat'),
('Carolina', 'CEO', '0000-00-00', '', 'KNU MechMat'),
('Ira', 'Event Organiser', '0000-00-00', '', 'KNU MechMat'),
('Ivan', 'Editor-at-large', '0000-00-00', '', 'KNU MechMat'),
('Vova', 'Editor-in-chief', '0000-00-00', '', 'KNU MechMat');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `Name` varchar(50) NOT NULL,
  `Primary responsibility` varchar(50) DEFAULT NULL,
  `Secondary responsibility` varchar(50) DEFAULT NULL,
  `Clock in` time(6) DEFAULT NULL,
  `Clock out` time(6) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`Name`, `Primary responsibility`, `Secondary responsibility`, `Clock in`, `Clock out`, `Department`, `Salary`) VALUES
('CEO', 'Management', 'PR', '09:00:00.000000', '06:00:00.000000', 'Main', NULL),
('Editor-at-large', 'Creative leader', 'Research', '10:00:00.000000', '05:00:00.000000', 'Content creation', NULL),
('Editor-in-chief', 'Editorial leader', 'Fact checking', '10:00:00.000000', '06:00:00.000000', 'Content creation', NULL),
('Event Organiser', 'Organize events', 'Presentation', '09:00:00.000000', '02:00:00.000000', 'Conference hall', NULL),
('Founder', 'Management', 'Directional decisions', '09:00:00.000000', '06:00:00.000000', 'Main', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Type` varchar(50) DEFAULT NULL,
  `Format` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Author` varchar(50) NOT NULL,
  `Date` date DEFAULT NULL,
  `Add revenues` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Type`, `Format`, `Name`, `Author`, `Date`, `Add revenues`) VALUES
('Article', 'Top 10', '"Best Movies in 2016"', 'Ivan', '0000-00-00', '170.00'),
('Podcast', 'How to', '"Prepare dinner for evening"', 'Artemii', '0000-00-00', '340.00'),
('Article', 'Research', '"Overwhelming Political Pressure"', 'Ivan', '0000-00-00', '500.00'),
('Video', 'Education', '"German Culture"', 'Carolina', '0000-00-00', '667.00'),
('Podcast', 'Entertainment', '"Game review"', 'Vova', '0000-00-00', '832.00'),
('Event', 'Lecture', '"Success stories"', 'Ira', '0000-00-00', '997.00'),
('Video', 'Research', '"Overview of US politics"', 'Artemii', '0000-00-00', '1162.00'),
('Podcast', 'Top 10', '"Top 100 rich people in the world"', 'Carolina', '0000-00-00', '1327.00'),
('Article', 'Entertainment', '"Weekend family leizure"', 'Vova', '0000-00-00', '1492.00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
