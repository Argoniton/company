-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2017 at 09:57 AM
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
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Name` varchar(50) DEFAULT NULL,
  `Website` varchar(50) DEFAULT NULL,
  `Phone Number` int(9) DEFAULT NULL,
  `Started to Collaborate` varchar(50) DEFAULT NULL,
  `Contact Person` varchar(50) DEFAULT NULL,
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Name`, `Website`, `Phone Number`, `Started to Collaborate`, `Contact Person`, `ID`) VALUES
('BuzzFeed', 'buzzfeed.com', 996573462, '24.03.2017', 'Angela', 1),
('Cosmopolitan', 'cosmopolitan.com', 675442314, '25.03.2017', 'Kyrylo', 2),
('DailyMail', 'dailymail.co.uk', 662341223, '23.03.2017', 'Olha', 3),
('Harper\'s Bazzar', 'harpersbazaar.com.ua', 999991199, '23.03.2017', 'Tomas', 4),
('KyivNews', 'nkyiv.com.ua', 687659454, '26.03.2017', 'Valentyna', 5),
('Science', 'sciencemag.org', 939785121, '27.03.2017', 'Alla', 6),
('TheTelegraph', 'telegraph.co.uk', 995674321, '23.01.2017', 'Semen', 7),
('Times', 'nytimes.com', 961331728, '23.03.2017', 'Myron', 8),
('Vogue', 'vogue.com', 975436547, '25.03.2017', 'MaoZedong', 9);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Name` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Name`, `Position`, `Date`, `Experience`, `Education`, `ID`) VALUES
('Artemii', 'Founder', '0000-00-00', '', 'KNU MechMat', 1),
('Carolina', 'CEO', '0000-00-00', '', 'KNU MechMat', 2),
('Ira', 'Event Organiser', '0000-00-00', '', 'KNU MechMat', 3),
('Ivan', 'Editor-at-large', '0000-00-00', '', 'KNU MechMat', 4),
('Vova', 'Editor-in-chief', '0000-00-00', '', 'KNU MechMat', 5);

-- --------------------------------------------------------

--
-- Table structure for table `order table`
--

CREATE TABLE `order table` (
  `Code Name` varchar(4) DEFAULT NULL,
  `ID` int(10) NOT NULL,
  `Due to` date DEFAULT NULL,
  `Submission Date` date DEFAULT NULL,
  `Submitted by` varchar(50) DEFAULT NULL,
  `Employee in Charge` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order table`
--

INSERT INTO `order table` (`Code Name`, `ID`, `Due to`, `Submission Date`, `Submitted by`, `Employee in Charge`) VALUES
('1A2B', 1, '2031-05-14', '2001-08-20', 'Times', 'Ivan'),
('3C4D', 2, '2030-03-20', '2001-01-20', 'DailyMail', 'Artemii'),
('5E6F', 3, '2004-04-20', '2023-11-20', 'BuzzFeed', 'Ivan'),
('9I0H', 4, '2001-04-20', '2018-04-20', 'The Telegraph', 'Vova'),
('1K2L', 5, '2024-08-20', '2029-06-20', 'Vogue', 'Ira'),
('3M4N', 6, '2028-08-20', '2005-10-20', 'Harper\'s Bazzar', 'Artemii'),
('5O6P', 7, '2028-06-20', '2005-10-20', 'Vogue', 'Carolina'),
('7R8S', 8, '2013-04-20', '2004-04-20', 'Times', 'Vova'),
('9T0Q', 9, '2001-06-20', '2009-11-20', 'DailyMail', 'Ira'),
('1Y2W', 10, '2015-06-20', '2019-02-20', 'KyivNews', 'Artemii'),
('3W4V', 11, '2009-05-20', '2013-04-20', 'Cosmopolitan', 'Vova'),
('5X6Z', 12, '2031-03-20', '2021-06-20', 'Times', 'Ivan'),
('7G8J', 13, '2001-05-20', '2001-12-20', 'Science', 'Carolina');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order table`
--
ALTER TABLE `order table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order table`
--
ALTER TABLE `order table`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
