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
-- Table structure for table `Faction`
--

CREATE TABLE IF NOT EXISTS `Faction` (
  `faction_name` varchar(30) NOT NULL,
  `capital` varchar(30) NOT NULL,
  `leader_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Faction`
--

INSERT INTO `Faction` (`faction_name`, `capital`, `leader_name`) VALUES
('Brotherhood Without Banners', 'Hollow Hill', 'Beric Dondarrion'),
('Dothraki', 'Vaes Dothrak', 'Khal Drogo'),
('Faceless Men', 'Braavos', 'Jaqen H''ghar'),
('Free Folk', 'Beyond the Wall', 'Mance Rayder'),
('House Arryn', 'The Eyrie', 'Robin Arryn'),
('House Baelish', 'The Eyrie', 'Petyr Baelish'),
('House Baratheon', 'King''s Landing', 'Tommen Baratheon'),
('House Bolton', 'Winterfell', 'Roose Bolton'),
('House Clegane', 'Clegane''s Keep', 'Gregor Clegane'),
('House Dondarrion', 'Blackhaven', 'Beric Dondarrion'),
('House Frey', 'The Twins', 'Walder Frey'),
('House Greyjoy', 'Pyke', 'Balon Greyjoy'),
('House Lannister', 'Casterly Rock', 'Cersei Lannister'),
('House Maegyr', 'Volantis', 'Talisa Stark'),
('House Martell', 'Sunspear', 'Doran Martell'),
('House Mormont', 'Bear Island', 'Lyanna Mormont'),
('House Reed', 'Greywater Watch', 'Howland Reed'),
('House Seaworth', 'Cape Wrath', 'Davos Seaworth'),
('House Selmy', 'Harvest Hall', 'Barristan Selmy'),
('House Slynt', 'Harrenhal', 'Janos Slynt'),
('House Stark', 'Winterfell', 'Sansa Stark'),
('House Swann', 'Stonehelm', 'Balon Swann'),
('House Targaryen', 'Meereen', 'Daenerys Targaryen'),
('House Tarth', 'Evenfall Hall', 'Selwyn Tarth'),
('House Tully', 'Riverrun', 'Edmure Tully'),
('House Tyrell', 'Highgarden', 'Mace Tyrell'),
('Kingsguard', 'King''s Landing', 'Jaime Lannister'),
('Order of Maesters', 'Oldtown', 'Pycelle'),
('Queensguard', 'Meereen', 'Barristan Selmy'),
('Second Sons', 'Meereen', 'Daario Naharis'),
('Sparrows', 'King''s Landing', 'High Sparrow'),
('The Burned Men', 'Mountains of the Moon', 'Timett'),
('The Night''s Watch', 'Castle Black', 'Jon Snow'),
('The Sealord of Braavos', 'Braavos', 'The Sealord'),
('The Stone Crows', 'Mountains of the Moon', 'Shagga'),
('The Thirteen', 'Qarth', 'Xaro Xhoan Daxos'),
('The Unsullied', 'Meereen', 'Grey Worm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Faction`
--
ALTER TABLE `Faction`
  ADD PRIMARY KEY (`faction_name`), ADD UNIQUE KEY `faction_name` (`faction_name`), ADD KEY `leader_name` (`leader_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
