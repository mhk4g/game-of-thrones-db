-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2016 at 01:09 PM
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
-- Table structure for table `City`
--

CREATE TABLE IF NOT EXISTS `City` (
  `city_name` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `City`
--

INSERT INTO `City` (`city_name`, `region`) VALUES
('Asshai', 'The Shadow Lands'),
('Astapor', 'Slaver''s Bay'),
('Bear Island', 'The North'),
('Beyond the Wall', 'North of the Wall'),
('Blackhaven', 'The Stormlands'),
('Braavos', 'The Free Cities'),
('Cape Wrath', 'The Stormlands'),
('Casterly Rock', 'The Westerlands'),
('Castle Black', 'The North'),
('Clegane''s Keep', 'The Westerlands'),
('Evenfall Hall', 'The Stormlands'),
('Greywater Watch', 'The North'),
('Harrenhal', 'The Riverlands'),
('Harvest Hall', 'The Stormlands'),
('Highgarden', 'The Reach'),
('Hollow Hill', 'The Riverlands'),
('King''s Landing', 'The Crownlands'),
('Lannisport', 'The Westerlands'),
('Meereen', 'Slaver''s Bay'),
('Mountains of the Moon', 'The Vale'),
('Old Valyria', 'Valyrian Peninsula'),
('Oldtown', 'The Reach'),
('Pentos', 'The Free Cities'),
('Pyke', 'The Iron Islands'),
('Qarth', 'The Free Cities'),
('Riverrun', 'The Riverlands'),
('Stonehelm', 'The Stormlands'),
('Sunspear', 'Dorne'),
('The Arbor', 'The Reach'),
('The Eyrie', 'The Vale'),
('The Twins', 'The Riverlands'),
('Vaes Dothrak', 'The Dothraki Sea'),
('Volantis', 'The Free Cities'),
('White Harbor', 'The North'),
('Winterfell', 'The North');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `City`
--
ALTER TABLE `City`
  ADD PRIMARY KEY (`city_name`), ADD UNIQUE KEY `city_name` (`city_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
