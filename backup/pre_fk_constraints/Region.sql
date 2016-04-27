-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2016 at 01:10 PM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cs4750mhk4g`
--

-- --------------------------------------------------------

--
-- Table structure for table `Region`
--

CREATE TABLE IF NOT EXISTS `Region` (
  `name` varchar(30) NOT NULL,
  `continent` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Region`
--

INSERT INTO `Region` (`name`, `continent`) VALUES
('Asshai', 'Essos'),
('Dorne', 'Westeros'),
('Kingdom of Sarnor', 'Essos'),
('Lhazar', 'Essos'),
('North of the Wall', 'Westeros'),
('Qarth', 'Essos'),
('Shadow Lands', 'Essos'),
('Slaver''s Bay', 'Essos'),
('The Crownlands', 'Westeros'),
('The Dothraki Sea', 'Essos'),
('The Free Cities', 'Essos'),
('The Iron Islands', 'Westeros'),
('The North', 'Westeros'),
('The Reach', 'Westeros'),
('The Riverlands', 'Westeros'),
('The Shivering Sea', 'Essos'),
('The Stormlands', 'Westeros'),
('The Vale', 'Westeros'),
('The Westerlands', 'Westeros'),
('Valyrian Peninsula', 'Essos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Region`
--
ALTER TABLE `Region`
  ADD PRIMARY KEY (`name`), ADD UNIQUE KEY `name` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
