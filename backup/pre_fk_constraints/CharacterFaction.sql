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
-- Table structure for table `CharacterFaction`
--

CREATE TABLE IF NOT EXISTS `CharacterFaction` (
  `character_name` varchar(40) NOT NULL,
  `faction_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CharacterFaction`
--

INSERT INTO `CharacterFaction` (`character_name`, `faction_name`) VALUES
('Aemon', 'House Targaryen'),
('Aemon', 'Order of Maesters'),
('Aemon', 'The Night''s Watch'),
('Aerys II Targaryen', 'House Targaryen'),
('Alliser Thorne', 'House Thorne'),
('Alliser Thorne', 'The Night''s Watch'),
('Areo Hotah', 'House Martell'),
('Armeca', 'House Baelish'),
('Arya Stark', 'Faceless Men'),
('Arya Stark', 'House Stark'),
('Balon Greyjoy', 'House Greyjoy'),
('Balon Swann', 'House Swann'),
('Balon Swann', 'Kingsguard'),
('Barristan Selmy', 'House Selmy'),
('Barristan Selmy', 'Kingsguard'),
('Barristan Selmy', 'Queensguard'),
('Beric Dondarrion', 'Brotherhood Without Banners'),
('Beric Dondarrion', 'House Dondarrion'),
('Bran Stark', 'House Stark'),
('Brienne of Tarth', 'House Baratheon'),
('Brienne of Tarth', 'House Tarth'),
('Brienne of Tarth', 'House Tully'),
('Brienne of Tarth', 'Kingsguard'),
('Bronn', 'House Lannister'),
('Brynden Tully', 'House Tully'),
('Catelyn Stark', 'House Stark'),
('Catelyn Stark', 'House Tully'),
('Cersei Lannister', 'House Baratheon'),
('Cersei Lannister', 'House Lannister'),
('Chella', 'House Lannister'),
('Chella', 'The Black Ears'),
('Daario Naharis', 'House Targaryen'),
('Daario Naharis', 'Second Sons'),
('Daenerys Targaryen', 'House Targaryen'),
('Davos Seaworth', 'House Baratheon'),
('Davos Seaworth', 'House Seaworth'),
('Doran Martell', 'House Martell'),
('Eddard Stark', 'House Stark'),
('Edmure Tully', 'House Stark'),
('Edmure Tully', 'House Tully'),
('Elia Martell', 'House Martell'),
('Ellaria Sand', 'House Martell'),
('Gared', 'The Night''s Watch'),
('Gregor Clegane', 'House Clegane'),
('Gregor Clegane', 'House Lannister'),
('Gregor Clegane', 'Kingsguard'),
('Grey Worm', 'House Targaryen'),
('Grey Worm', 'The Unsullied'),
('High Sparrow', 'Sparrows'),
('Hodor', 'House Stark'),
('Ilyn Payne', 'House Baratheon'),
('Jaime Lannister', 'House Lannister'),
('Jaime Lannister', 'Kingsguard'),
('Janos Slynt', 'House Slynt'),
('Janos Slynt', 'The Night''s Watch'),
('Jaqen H''ghar', 'Faceless Men'),
('Jeor Mormont', 'House Mormont'),
('Jeor Mormont', 'The Night''s Watch'),
('Joffrey Baratheon', 'House Baratheon'),
('Joffrey Baratheon', 'House Lannister'),
('Jojen Reed', 'House Reed'),
('Jojen Reed', 'House Stark'),
('Jon Arryn', 'House Arryn'),
('Jon Snow', 'House Stark'),
('Jon Snow', 'The Night''s Watch'),
('Jorah Mormont', 'House Mormont'),
('Jorah Mormont', 'House Targaryen'),
('Kevan Lannister', 'House Lannister'),
('Khal Drogo', 'Dothraki'),
('Lancel Lannister', 'House Lannister'),
('Lancel Lannister', 'Sparrows'),
('Locke', 'House Bolton'),
('Locke', 'The Night''s Watch'),
('Loras Tyrell', 'House Baratheon'),
('Loras Tyrell', 'House Tyrell'),
('Loras Tyrell', 'Kingsguard'),
('Lord of Bones', 'Free Folk'),
('Lothar Frey', 'House Frey'),
('Luwin', 'House Stark'),
('Luwin', 'Order of Maesters'),
('Lyanna Stark', 'House Stark'),
('Lysa Arryn', 'House Arryn'),
('Lysa Arryn', 'House Baelish'),
('Lysa Arryn', 'House Tully'),
('Mace Tyrell', 'House Tyrell'),
('Mance Rayder', 'Free Folk'),
('Mance Rayder', 'The Night''s Watch'),
('Margaery Tyrell', 'House Baratheon'),
('Margaery Tyrell', 'House Tyrell'),
('Meera Reed', 'House Reed'),
('Meera Reed', 'House Stark'),
('Melisandre', 'House Baratheon'),
('Mhaegen', 'House Baelish'),
('Missandei', 'House Targaryen'),
('Myranda', 'House Bolton'),
('Myrcella Baratheon', 'House Baratheon'),
('Nymeria Sand', 'House Martell'),
('Obara Sand', 'House Martell'),
('Oberyn Martell', 'House Martell'),
('Olenna Tyrell', 'House Redwyne'),
('Olenna Tyrell', 'House Tyrell'),
('Osha', 'House Stark'),
('Petyr Baelish', 'House Baelish'),
('Podrick Payne', 'House Lannister'),
('Podrick Payne', 'House Payne'),
('Polliver', 'House Lannister'),
('Pyat Pree', 'The Thirteen'),
('Pyat Pree', 'Warlocks of Qarth'),
('Pycelle', 'House Lannister'),
('Pycelle', 'Order of Maesters'),
('Qhorin', 'The Night''s Watch'),
('Qyburn', 'House Bolton'),
('Qyburn', 'House Lannister'),
('Qyburn', 'Order of Maesters'),
('Qyburn', 'Small Council'),
('Ramsay Bolton', 'House Bolton'),
('Renly Baratheon', 'House Baratheon'),
('Rhaegar Targaryen', 'House Targaryen'),
('Rickon Stark', 'House Stark'),
('Robb Stark', 'House Stark'),
('Robert Baratheon', 'House Baratheon'),
('Robin Arryn', 'House Arryn'),
('Roose Bolton', 'House Bolton'),
('Ros', 'House Baelish'),
('Roslin Frey', 'House Frey'),
('Roslin Frey', 'House Tully'),
('Salladhor Saan', 'House Baratheon'),
('Samwell Tarly', 'House Tarly'),
('Samwell Tarly', 'The Night''s Watch'),
('Sandor Clegane', 'House Baratheon'),
('Sandor Clegane', 'House Clegane'),
('Sandor Clegane', 'Kingsguard'),
('Sansa Stark', 'House Bolton'),
('Sansa Stark', 'House Lannister'),
('Sansa Stark', 'House Stark'),
('Selyse Baratheon', 'House Baratheon'),
('Shagga', 'The Stone Crows'),
('Shireen Baratheon', 'House Baratheon'),
('Spice King', 'The Thirteen'),
('Stannis Baratheon', 'House Baratheon'),
('Syrio Forel', 'House Stark'),
('Syrio Forel', 'The Sealord of Braavos'),
('Talisa Stark', 'House Maegyr'),
('Talisa Stark', 'House Stark'),
('Tansy', 'House Bolton'),
('Theon Greyjoy', 'House Bolton'),
('Theon Greyjoy', 'House Greyjoy'),
('Theon Greyjoy', 'House Stark'),
('Thoros', 'The Brotherhood Without Banners'),
('Timett', 'House Lannister'),
('Timett', 'The Burned Men'),
('Tommen Baratheon', 'House Baratheon'),
('Tormund', 'Free Folk'),
('Trystane Martell', 'House Martell'),
('Tyene Sand', 'House Martell'),
('Tyrion Lannister', 'House Lannister'),
('Tyrion Lannister', 'House Targaryen'),
('Tywin Lannister', 'House Lannister'),
('Varys', 'House Targaryen'),
('Violet', 'House Bolton'),
('Viserys Targaryen', 'House Targaryen'),
('Walda Bolton', 'House Bolton'),
('Walda Bolton', 'House Frey'),
('Walder Frey', 'House Frey'),
('Walder Rivers', 'House Frey'),
('Yara Greyjoy', 'House Greyjoy'),
('Ygritte', 'Free Folk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CharacterFaction`
--
ALTER TABLE `CharacterFaction`
  ADD PRIMARY KEY (`character_name`,`faction_name`), ADD KEY `character_name` (`character_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
