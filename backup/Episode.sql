-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2016 at 06:20 PM
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
-- Table structure for table `Episode`
--

CREATE TABLE IF NOT EXISTS `Episode` (
  `episode_name` varchar(30) NOT NULL,
  `season` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Episode`
--

INSERT INTO `Episode` (`episode_name`, `season`, `number`) VALUES
('A Golden Crown', 1, 6),
('A Man Without Honor', 2, 7),
('And Now His Watch is Ended', 3, 4),
('Baelor', 1, 9),
('Blackwater', 2, 9),
('Breaker of Chains', 4, 3),
('Cripples, Bastards and Broken', 1, 4),
('Dark Wings, Dark Words', 3, 2),
('Fire and Blood', 1, 10),
('First of His Name', 4, 5),
('Garden of Bones', 2, 4),
('Hardhome', 5, 8),
('High Sparrow', 5, 3),
('Kill the Boy', 5, 5),
('Kissed by Fire', 3, 5),
('Lord Snow', 1, 3),
('Mhysa', 3, 10),
('Mockingbird', 4, 7),
('Mother''s Mercy', 5, 10),
('Oathkeeper', 4, 4),
('Second Sons', 3, 8),
('Sons of the Harpy', 5, 4),
('The Bear and the Maiden Fair', 3, 7),
('The Children', 4, 10),
('The Climb', 3, 6),
('The Dance of Dragons', 5, 9),
('The Ghost of Harrenhal', 2, 5),
('The Gift', 5, 7),
('The House of Black and White', 5, 2),
('The Kingsroad', 1, 2),
('The Laws of Gods and Men', 4, 6),
('The Lion and the Rose', 4, 2),
('The Mountain and the Viper', 4, 8),
('The Night Lands', 2, 2),
('The North Remembers', 2, 1),
('The Old Gods and the New', 2, 6),
('The Pointy End', 1, 8),
('The Prince of Winterfell', 2, 8),
('The Rains of Castamere', 3, 9),
('The Wars to Come', 5, 1),
('The Watchers on the Wall', 4, 9),
('The Wolf and the Lion', 1, 5),
('Two Swords', 4, 1),
('Unbowed, Unbent, Unbroken', 5, 6),
('Valar Dohaeris', 3, 1),
('Valar Morghulis', 2, 10),
('Walk of Punishment', 3, 3),
('What Is Dead May Never Die', 2, 3),
('Winter is Coming', 1, 1),
('You Win or You Die', 1, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Episode`
--
ALTER TABLE `Episode`
  ADD PRIMARY KEY (`episode_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
