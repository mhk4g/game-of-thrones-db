-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2016 at 04:46 PM
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
CREATE DATABASE IF NOT EXISTS `cs4750mhk4g` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cs4750mhk4g`;

-- --------------------------------------------------------
-- Table structure for table `CharacterActor`

DROP TABLE IF EXISTS `CharacterActor`;
CREATE TABLE IF NOT EXISTS `CharacterActor` (
  `character_name` varchar(40) NOT NULL,
  `actor_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `CharacterAlias`

DROP TABLE IF EXISTS `CharacterAlias`;
CREATE TABLE IF NOT EXISTS `CharacterAlias` (
  `character_name` varchar(40) NOT NULL,
  `alias_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `CharacterDeath`

DROP TABLE IF EXISTS `CharacterDeath`;
CREATE TABLE IF NOT EXISTS `CharacterDeath` (
  `character_name` varchar(30) NOT NULL,
  `episode_name` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `CharacterFaction`

DROP TABLE IF EXISTS `CharacterFaction`;
CREATE TABLE IF NOT EXISTS `CharacterFaction` (
  `character_name` varchar(40) NOT NULL,
  `faction_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `Characters`

DROP TABLE IF EXISTS `Characters`;
CREATE TABLE IF NOT EXISTS `Characters` (
  `character_name` varchar(30) NOT NULL,
  `first_appearance` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `aka` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `City`

DROP TABLE IF EXISTS `City`;
CREATE TABLE IF NOT EXISTS `City` (
  `city_name` varchar(30) NOT NULL,
  `region_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `Creature`

DROP TABLE IF EXISTS `Creature`;
CREATE TABLE IF NOT EXISTS `Creature` (
  `creature_name` varchar(30) NOT NULL,
  `species` varchar(30) NOT NULL,
  `affiliation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `Episode`

DROP TABLE IF EXISTS `Episode`;
CREATE TABLE IF NOT EXISTS `Episode` (
  `episode_name` varchar(50) NOT NULL,
  `season` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `Faction`

DROP TABLE IF EXISTS `Faction`;
CREATE TABLE IF NOT EXISTS `Faction` (
  `faction_name` varchar(30) NOT NULL,
  `capital` varchar(30) NOT NULL,
  `leader_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `GOTUsers`

DROP TABLE IF EXISTS `GOTUsers`;
CREATE TABLE IF NOT EXISTS `GOTUsers` (
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `access_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `GOTUsers`
--
DROP TRIGGER IF EXISTS `user_validate_insert`;
DELIMITER $$
CREATE TRIGGER `user_validate_insert` BEFORE INSERT ON `GOTUsers`
 FOR EACH ROW BEGIN
	IF (NEW.email NOT LIKE '%@%') THEN
			SIGNAL SQLSTATE '45000'
					SET MESSAGE_TEXT = '[table:GOTUsers] - `email` column is not valid';

	END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------
-- Table structure for table `Region`

DROP TABLE IF EXISTS `Region`;
CREATE TABLE IF NOT EXISTS `Region` (
  `region_name` varchar(30) NOT NULL,
  `continent` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Indexes for dumped tables

--
-- Indexes for table `CharacterActor`
ALTER TABLE `CharacterActor`
  ADD PRIMARY KEY (`character_name`,`actor_name`), ADD KEY `character_name` (`character_name`), ADD KEY `character_name_2` (`character_name`), ADD KEY `character_name_3` (`character_name`);

--
-- Indexes for table `CharacterAlias`
ALTER TABLE `CharacterAlias`
  ADD PRIMARY KEY (`character_name`,`alias_name`), ADD KEY `character_name` (`character_name`);

--
-- Indexes for table `CharacterDeath`
ALTER TABLE `CharacterDeath`
  ADD PRIMARY KEY (`character_name`), ADD UNIQUE KEY `character_name_2` (`character_name`), ADD KEY `character_name` (`character_name`);

--
-- Indexes for table `CharacterFaction`
ALTER TABLE `CharacterFaction`
  ADD PRIMARY KEY (`character_name`,`faction_name`), ADD KEY `character_name` (`character_name`), ADD KEY `CharacterFaction_ibfk_2` (`faction_name`);

--
-- Indexes for table `Characters`
ALTER TABLE `Characters`
  ADD PRIMARY KEY (`character_name`), ADD UNIQUE KEY `character_name` (`character_name`), ADD UNIQUE KEY `character_name_2` (`character_name`), ADD KEY `character_name_3` (`character_name`), ADD KEY `aka` (`aka`), ADD KEY `first_appearance` (`first_appearance`);

--
-- Indexes for table `City`
ALTER TABLE `City`
  ADD PRIMARY KEY (`city_name`), ADD UNIQUE KEY `city_name` (`city_name`), ADD KEY `region` (`region_name`);

--
-- Indexes for table `Creature`
ALTER TABLE `Creature`
  ADD PRIMARY KEY (`creature_name`), ADD UNIQUE KEY `creature_name` (`creature_name`), ADD KEY `creature_name_2` (`creature_name`), ADD KEY `affiliation` (`affiliation`), ADD KEY `affiliation_2` (`affiliation`);

--
-- Indexes for table `Episode`
ALTER TABLE `Episode`
  ADD PRIMARY KEY (`episode_name`), ADD KEY `episode_name` (`episode_name`);

--
-- Indexes for table `Faction`
ALTER TABLE `Faction`
  ADD PRIMARY KEY (`faction_name`), ADD UNIQUE KEY `faction_name` (`faction_name`), ADD KEY `leader_name` (`leader_name`), ADD KEY `leader_name_2` (`leader_name`), ADD KEY `capital` (`capital`);

--
-- Indexes for table `GOTUsers`
ALTER TABLE `GOTUsers`
  ADD PRIMARY KEY (`email`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `Region`
ALTER TABLE `Region`
  ADD PRIMARY KEY (`region_name`), ADD UNIQUE KEY `name` (`region_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CharacterActor`
ALTER TABLE `CharacterActor`
ADD CONSTRAINT `CharacterActor_ibfk_1` FOREIGN KEY (`character_name`) REFERENCES `Characters` (`character_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `CharacterAlias`
ALTER TABLE `CharacterAlias`
ADD CONSTRAINT `CharacterAlias_ibfk_1` FOREIGN KEY (`character_name`) REFERENCES `Characters` (`character_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `CharacterDeath`
ALTER TABLE `CharacterDeath`
ADD CONSTRAINT `CharacterDeath_ibfk_1` FOREIGN KEY (`character_name`) REFERENCES `Characters` (`character_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `CharacterFaction`
ALTER TABLE `CharacterFaction`
ADD CONSTRAINT `CharacterFaction_ibfk_2` FOREIGN KEY (`faction_name`) REFERENCES `Faction` (`faction_name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `CharacterFaction_ibfk_1` FOREIGN KEY (`character_name`) REFERENCES `Characters` (`character_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Characters`
ALTER TABLE `Characters`
ADD CONSTRAINT `Characters_ibfk_1` FOREIGN KEY (`first_appearance`) REFERENCES `Episode` (`episode_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `City`
ALTER TABLE `City`
ADD CONSTRAINT `City_ibfk_1` FOREIGN KEY (`region_name`) REFERENCES `Region` (`region_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Creature`
ALTER TABLE `Creature`
ADD CONSTRAINT `Creature_ibfk_1` FOREIGN KEY (`affiliation`) REFERENCES `Characters` (`character_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Faction`
ALTER TABLE `Faction`
ADD CONSTRAINT `Faction_ibfk_2` FOREIGN KEY (`leader_name`) REFERENCES `Characters` (`character_name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `Faction_ibfk_1` FOREIGN KEY (`capital`) REFERENCES `City` (`city_name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
