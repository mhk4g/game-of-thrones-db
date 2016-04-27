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
-- Table structure for table `Creature`
--

CREATE TABLE IF NOT EXISTS `Creature` (
  `creature_name` varchar(30) NOT NULL,
  `species` varchar(30) NOT NULL,
  `affiliation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Creature`
--

INSERT INTO `Creature` (`creature_name`, `species`, `affiliation`) VALUES
('Bastard''s Girls', 'Dog', 'Ramsay Bolton'),
('Blood', 'Horse', 'Ramsay Bolton'),
('Dancer', 'Horse', 'Bran Stark'),
('Dongo', 'Giant', 'Mance Rayder'),
('Drogon', 'Dragon', 'Daenerys Targaryen'),
('Ghost', 'Direwolf', 'Jon Snow'),
('Grey Wind', 'Direwolf', 'Robb Stark'),
('Mag the Mighty', 'Giant', 'Mance Rayder'),
('Nymeria', 'Direwolf', 'Arya Stark'),
('Red', 'Horse', 'Khal Drogo'),
('Rhaegal', 'Dragon', 'Daenerys Targaryen'),
('Ser Pounce', 'Cat', 'Tommen Baratheon'),
('Shaggydog', 'Direwolf', 'Rickon Stark'),
('Silver', 'Horse', 'Daenerys Targaryen'),
('Stranger', 'Horse', 'Sandor Clegane'),
('Summer', 'Direwolf', 'Bran Stark'),
('Viserion', 'Dragon', 'Daenerys Targaryen'),
('Wun Wun', 'Giant', 'Jon Snow');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Creature`
--
ALTER TABLE `Creature`
  ADD PRIMARY KEY (`creature_name`), ADD UNIQUE KEY `creature_name` (`creature_name`), ADD KEY `creature_name_2` (`creature_name`), ADD KEY `affiliation` (`affiliation`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
