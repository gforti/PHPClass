-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2013 at 01:37 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phplab`
--
CREATE DATABASE IF NOT EXISTS `phplab` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `phplab`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `address`, `city`, `state`, `zip`, `name_id`) VALUES
(3, '334 bold mill', 'warwick', 'RI', '89009', 3),
(4, '1000 Grand Concourse', 'Bronx', 'NY', '10453', 4),
(5, '923 Fall Hill rd', 'Boston', 'MA', '12405', 5);

-- --------------------------------------------------------

--
-- Table structure for table `addressbook`
--

CREATE TABLE IF NOT EXISTS `addressbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `addressbook`
--

INSERT INTO `addressbook` (`id`, `address`, `city`, `state`, `zip`, `name`) VALUES
(1, '123 main st', 'providence', 'RI', '02990', 'James Doe'),
(2, '123 fake ave', 'warwick', 'RI', '02890', 'Amy Kay'),
(3, '334 bold mill', 'cranston', 'RI', '89009', 'Jimmy Gane'),
(4, '1000 Grand Concourse', 'Bronx', 'NY', '10453', 'Slick Rick'),
(5, '923 Fall Hill rd', 'Boston', 'MA', '12405', 'Linda Kryll'),
(6, '22 demodemo ave', 'demodemo', 'demo', '99999', 'demodemo'),
(7, '123 fake st', 'queens', 'NY', '02930', 'tester'),
(8, '999 wair', 'warwick', 'RI', '02990', 'Mr ME'),
(9, '333 prov st', 'providence', 'RI', '02908', 'mike'),
(10, '44 gano st', 'pawtucket', 'RI', '28890', 'Gano Guy'),
(11, '77 yarn marn rd', 'year', 'ma', '99834', 'yarn marn'),
(12, '12345678 jack ave', 'jackson', 'MO', '66789', 'Action Jackson'),
(13, '1 north pole', 'christmas', 'AL', '99999', 'Santa'),
(14, '123 main st', 'West Warwick', 'RI', '99999', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE IF NOT EXISTS `guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`id`, `name`, `email`, `comments`) VALUES
(1, 'test', 'test@teest.com', 'test'),
(2, 'test', 'test@teest.com', 'test'),
(3, 'demodemo', 'demo@demo.com', 'demo'),
(4, 'test', 'test@teest.com', 'test'),
(5, 'hello', 'hello@hello.com', 'hello'),
(6, 'cool', 'cool@cool.com', 'cool'),
(7, '', '', ''),
(8, 'guestbook', 'guest@book.com', 'guestbook'),
(9, 'working', 'work@ing.com', 'working'),
(10, 'demo', 'demo@demo.com', 'demo'),
(11, 'dfdfdfd', 'dfdfdffd@fdfdfd.dsds', 'ddsdsdsdsdssdds'),
(12, 'ttttttt', 'ttttt@ttttt.com', 'ttttttttttttt');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`) VALUES
('demo'),
('demo1'),
('demo2'),
('demo3'),
('demo4');

-- --------------------------------------------------------

--
-- Table structure for table `name`
--

CREATE TABLE IF NOT EXISTS `name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `name`
--

INSERT INTO `name` (`id`, `name`) VALUES
(1, 'James Doe'),
(2, 'Amy Kay'),
(3, 'Jimmy Gane'),
(4, 'Slick Rick'),
(5, 'Linda Kryll');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `email`, `username`, `password`) VALUES
(1, 'test@test.com', 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3');

-- --------------------------------------------------------

--
-- Table structure for table `week3`
--

CREATE TABLE IF NOT EXISTS `week3` (
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `week3`
--

INSERT INTO `week3` (`fullname`, `email`, `comments`) VALUES
('test', 'email@test.com', 'comments given here'),
('tes', 'tess@kgkgkg.com', 'dfgsdgsdfgsdgsdfgsd'),
('gabriel', 'gabriel@nowhere.com', 'comments are in');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
