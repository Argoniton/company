-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2017 at 01:02 PM
-- Server version: 5.6.33-cll-lve
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b19155415_companydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `Name` varchar(50) DEFAULT NULL,
  `Website` varchar(50) DEFAULT NULL,
  `Phone Number` int(9) DEFAULT NULL,
  `Started to Collaborate` date DEFAULT NULL,
  `Contact Person` varchar(50) DEFAULT NULL,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Name`, `Website`, `Phone Number`, `Started to Collaborate`, `Contact Person`, `ID`) VALUES
('BuzzFeed', 'buzzfeed.com', 996573462, '2014-03-20', 'Angela', 1),
('Cosmopolitan', 'cosmopolitan.com', 675442314, '2015-03-20', 'Kyrylo', 2),
('DailyMail', 'dailymail.co.uk', 662341223, '2013-03-20', 'Olha', 3),
('Harper''s Bazzar', 'harpersbazaar.com.ua', 999991199, '2013-03-20', 'Tomas', 4),
('KyivNews', 'nkyiv.com.ua', 687659454, '2016-03-20', 'Valentyna', 5),
('Science', 'sciencemag.org', 939785121, '2015-03-20', 'Alla', 6),
('TheTelegraph', 'telegraph.co.uk', 995674321, '2013-01-20', 'Semen', 7),
('Times', 'nytimes.com', 961331728, '2013-03-20', 'Myron', 8),
('Vogue', 'vogue.com', 975436547, '2017-03-20', 'MaoZedong', 9);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `Name` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Name`, `Position`, `Date`, `Experience`, `Education`, `ID`) VALUES
('Artemii', 'Founder', '2017-04-13', '', 'KNU MechMat', 1),
('Carolina', 'CEO', '2017-04-05', '', 'KNU MechMat', 2),
('Ira', 'Event Organiser', '2017-04-20', '', 'KNU MechMat', 3),
('Ivan', 'Editor-at-large', '2017-04-20', '', 'KNU MechMat', 4),
('Vova', 'Editor-in-chief', '2017-04-12', '', 'KNU MechMat', 5);

-- --------------------------------------------------------

--
-- Table structure for table `order table`
--

CREATE TABLE IF NOT EXISTS `order table` (
  `Code Name` varchar(4) DEFAULT NULL,
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Due to` date DEFAULT NULL,
  `Submission Date` date DEFAULT NULL,
  `Submitted by` varchar(50) DEFAULT NULL,
  `Employee in Charge` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `order table`
--

INSERT INTO `order table` (`Code Name`, `ID`, `Due to`, `Submission Date`, `Submitted by`, `Employee in Charge`) VALUES
('1A2B', 1, '2031-05-14', '2001-08-20', 'Times', 'Ivan'),
('3C4D', 2, '2030-03-20', '2001-01-20', 'DailyMail', 'Artemii'),
('5E6F', 3, '2004-04-20', '2023-11-20', 'BuzzFeed', 'Ivan'),
('9I0H', 4, '2001-04-20', '2018-04-20', 'The Telegraph', 'Vova'),
('1K2L', 5, '2024-08-20', '2029-06-20', 'Vogue', 'Ira'),
('3M4N', 6, '2028-08-20', '2005-10-20', 'Harper''s Bazzar', 'Artemii'),
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

CREATE TABLE IF NOT EXISTS `position` (
  `Name` varchar(50) NOT NULL,
  `Primary responsibility` varchar(50) DEFAULT NULL,
  `Secondary responsibility` varchar(50) DEFAULT NULL,
  `Clock in` time(6) DEFAULT NULL,
  `Clock out` time(6) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`Name`, `Primary responsibility`, `Secondary responsibility`, `Clock in`, `Clock out`, `Department`, `Salary`, `id`) VALUES
('CEO', 'Management', 'PR', '09:00:00.000000', '06:00:00.000000', 'Main', '1300.00', 1),
('Editor-at-large', 'Creative leader', 'Research', '10:00:00.000000', '05:00:00.000000', 'Content creation', '1300.00', 2),
('Editor-in-chief', 'Editorial leader', 'Fact checking', '10:00:00.000000', '06:00:00.000000', 'Content creation', '1100.00', 3),
('Event Organiser', 'Organize events', 'Presentation', '09:00:00.000000', '02:00:00.000000', 'Conference hall', '600.00', 4),
('Founder', 'Management', 'Directional decisions', '09:00:00.000000', '06:00:00.000000', 'Main', '1200.00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `Type` varchar(50) DEFAULT NULL,
  `Format` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Author` varchar(50) NOT NULL,
  `Date` date DEFAULT NULL,
  `Add revenues` decimal(10,2) DEFAULT NULL,
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Type`, `Format`, `Name`, `Author`, `Date`, `Add revenues`, `Id`) VALUES
('Article', 'Top 10', '"Best Movies in 2016"', 'Ivan', '2017-04-12', '170.00', 1),
('Podcast', 'How to', '"Prepare dinner for evening"', 'Artemii', '2017-04-12', '340.00', 2),
('Article', 'Research', '"Overwhelming Political Pressure"', 'Ivan', '2017-04-17', '500.00', 3),
('Video', 'Education', '"German Culture"', 'Carolina', '2017-04-29', '667.00', 4),
('Podcast', 'Entertainment', '"Game review"', 'Vova', '2017-04-05', '832.00', 5),
('Event', 'Lecture', '"Success stories"', 'Ira', '2017-04-01', '997.00', 6),
('Video', 'Research', '"Overview of US politics"', 'Artemii', '2017-04-05', '1162.00', 7),
('Podcast', 'Top 10', '"Top 100 rich people in the world"', 'Carolina', '2017-04-10', '1327.00', 8),
('Article', 'Entertainment', '"Weekend family leizure"', 'Vova', '2017-04-15', '1492.00', 9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
