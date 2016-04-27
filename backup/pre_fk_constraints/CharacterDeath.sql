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
-- Table structure for table `CharacterDeath`
--

CREATE TABLE IF NOT EXISTS `CharacterDeath` (
  `character_name` varchar(30) NOT NULL,
  `episode_name` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CharacterDeath`
--

INSERT INTO `CharacterDeath` (`character_name`, `episode_name`, `description`) VALUES
('Aemon', 'The Gift', 'Died peacefully of old age'),
('Areo Hotah', 'The Red Woman', 'Stabbed in the back by Tyene Sand'),
('Barristan Selmy', 'Sons of the Harpy', 'Slain while fighting the Sons of the Harpy'),
('Catelyn Stark', 'The Rains of Castamere', 'Throat slit by Black Walder Rivers'),
('Craster', 'And Now His Watch is Ended', 'Slain by Karl Tanner'),
('Eddard Stark', 'Baelor', 'Beheaded by Ser Ilyn Paine for treason against King Joffrey'),
('Gared', 'Winter is Coming', 'Decapitated by a White Walker'),
('Janos Slynt', 'High Sparrow', 'Beheaded for insubordination by Jon Snow'),
('Jeor Mormont', 'And Now His Watch is Ended', 'Stabbed to death by Rast'),
('Joffrey Baratheon', 'The Lion and the Rose', 'Poisoned at his wedding feast by Olenna Tyrell with the assistance of Petyr Baelish'),
('Jojen Reed', 'The Children', 'Stabbed multiple times by a wight, mercy-killed by Meera and blasted by a fireball'),
('Jon Snow', 'Mother''s Mercy', 'Stabbed repeatedly in the Mutiny at Castle Black'),
('Khal Drogo', 'Fire and Blood', 'Smothered by Daenerys Targaryen in a mercy killing after being left in a vegetative state by Mirri Maz Duur'),
('Locke', 'First of His Name', 'Neck snapped by Bran Stark who had warged into Hodor'),
('Lommy Greenhands', 'What is Dead May Never Die', 'Killed by Polliver'),
('Lord of Bones', 'Hardhome', 'Beaten to death by Tormund'),
('Luwin', 'Valar Morghulis', 'Stabbed in the abdomen with a spear by Dagmer and has his suffering ended by Osha'),
('Lysa Arryn', 'Mockingbird', 'Fell to her death after pushed out the Moon Door by Petyr Baelish'),
('Mance Rayder', 'The Wars to Come', 'Set to be burned alive by Melisandre, but shot with an arrow by Jon Snow out of mercy, before he could catch fire.'),
('Mycah', 'The Kingsroad', 'Killed by The Hound'),
('Myranda', 'Mother''s Mercy', 'Thrown from a rampart by Theon Greyjoy for threatening Sansa Stark'),
('Myrcella Baratheon', 'Mother''s Mercy', 'Poisoned by Ellaria Sand and the Sand Snakes.'),
('Oberyn Martell', 'The Mountain and the Viper', 'Skull crushed by Ser Gregor Clegane'),
('Polliver', 'Two Swords', 'Stabbed in the throat by Arya Stark'),
('Qhorin', 'Valar Morghulis', 'Killed by Jon Snow'),
('Renly Baratheon', 'The Ghost of Harrenhal', 'Killed by a Shadow-creature birthed by Melisandre'),
('Robb Stark', 'The Rains of Castamere', 'Shot several times by Frey crossbowmen, then stabbed through the heart by Roose Bolton'),
('Robert Baratheon', 'You Win or You Die', 'Mortally wounded by a wild boar after drinking wine given to him by Lancel Lannister, on orders from Cersei Lannister'),
('Ros', 'The Climb', 'Shot numerous times with a crossbow, one fatally to the heart by Joffrey Baratheon'),
('Selyse Baratheon', 'Brightwater Keep', 'Hanged herself'),
('Shae', 'The Children', 'Strangled to death by Tyrion Lannister'),
('Shireen Baratheon', 'The Dance of Dragons', 'Burned alive as a sacrifice to the Lord of Light by Melisandre'),
('Spice King', 'A Man Without Honor', 'Killed by Pyat Pree'),
('Stannis Baratheon', 'Mother''s Mercy', 'Beheaded after the Battle of Winterfell by Brienne of Tarth with Oathkeeper'),
('Talisa Stark', 'The Rains of Castamere', 'Stabbed repeatedly by Lothar Frey, killing her unborn child in the process'),
('Tywin Lannister', 'The Children', 'Shot by his own son, Tyrion, with a crossbow'),
('Viserys Targaryen', 'A Golden Crown', 'Burned with molten gold by Khal Drogo'),
('Xaro Xhoan Daxos', 'Valar Morghulis', 'Locked inside a vault by Daenerys Targaryen and left to die with Doreah'),
('Ygritte', 'The Watchers on the Wall', 'Shot with an arrow by Olly');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CharacterDeath`
--
ALTER TABLE `CharacterDeath`
  ADD PRIMARY KEY (`character_name`), ADD UNIQUE KEY `character_name_2` (`character_name`), ADD KEY `character_name` (`character_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
