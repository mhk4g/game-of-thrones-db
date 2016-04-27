-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2016 at 01:08 PM
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
-- Table structure for table `CharacterAlias`
--

CREATE TABLE IF NOT EXISTS `CharacterAlias` (
  `character_name` varchar(40) NOT NULL,
  `alias_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CharacterAlias`
--

INSERT INTO `CharacterAlias` (`character_name`, `alias_name`) VALUES
('Aemon', 'Aemon Targaryen (formerly)'),
('Aemon', 'Maester Aemon'),
('Aerys II Targaryen', 'Aerys of House Targaryen, the Second of His Name'),
('Aerys II Targaryen', 'King Scab'),
('Aerys II Targaryen', 'Mad King Aerys'),
('Aerys II Targaryen', 'The Mad King'),
('Arya Stark', 'Arry'),
('Arya Stark', 'Lanna'),
('Balon Greyjoy', 'Balon Greyjoy, the Ninth of His Name Since the Grey King'),
('Balon Greyjoy', 'Invader of the North'),
('Barristan Selmy', 'Barristan the Bold'),
('Beric Dondarrion', 'The Lightning Lord'),
('Bran Stark', 'Bran'),
('Brienne of Tarth', 'Brienne the Beauty'),
('Brienne of Tarth', 'The Maid of Tarth'),
('Bronn', 'Ser Bronn of the Blackwater'),
('Brynden Tully', 'The Blackfish'),
('Daenerys Targaryen', 'Daenerys Stormborn'),
('Daenerys Targaryen', 'Dany'),
('Daenerys Targaryen', 'Mhysa'),
('Daenerys Targaryen', 'The Dragon Queen'),
('Daenerys Targaryen', 'The Queen Across the Sea'),
('Daenerys Targaryen', 'The Silver Queen'),
('Daenerys Targaryen', 'The Unburnt'),
('Davos Seaworth', 'Davos of Flea Bottom'),
('Davos Seaworth', 'The Onion Knight'),
('Elia Martell', 'Elia of Dorne'),
('Gregor Clegane', 'Mad Dog'),
('Gregor Clegane', 'The Mountain'),
('Gregor Clegane', 'The Mountain That Rides'),
('Gregor Clegane', 'Tywin Lannister'),
('Jaime Lannister', 'Man without Honor'),
('Jaime Lannister', 'Oathbreaker'),
('Jaime Lannister', 'The Kingslayer'),
('Jeor Mormont', 'The Lord Crow'),
('Jeor Mormont', 'The Old Bear'),
('Joffrey Baratheon', 'King Joffrey of Houses Baratheon and Lannister, the First of His Name.'),
('Joffrey Baratheon', 'The King on the Iron Throne'),
('Jon Snow', 'King Crow'),
('Jon Snow', 'Lord Snow'),
('Jon Snow', 'The Bastard of Winterfell'),
('Jorah Mormont', 'Jorah the Andal'),
('Khal Drogo', 'The Great Khal'),
('Lancel Lannister', 'Brother Lancel'),
('Lancel Lannister', 'Lancel Lannister'),
('Lommy Greenhands', 'Lommy Greenhands'),
('Loras Tyrell', 'The Knight of the Flowers'),
('Lord of Bones', 'Rattleshirt'),
('Lothar Frey', 'Lame Lothar'),
('Lysa Arryn', 'Lysa Tully'),
('Mace Tyrell', 'Lord Oaf'),
('Melisandre', 'Lady Melisandre'),
('Melisandre', 'Melisandre of Asshai'),
('Melisandre', 'The Red Woman'),
('Nymeria Sand', 'Lady Nym'),
('Oberyn Martell', 'The Red Viper of Dorne'),
('Olenna Tyrell', 'The Queen of Thorns'),
('Petyr Baelish', 'Littlefinger'),
('Podrick Payne', 'Pod'),
('Qhorin', 'Qhorin Halfhand'),
('Qhorin', 'The Halfhand'),
('Quaithe', 'Quaithe of the Shadow'),
('Ramsay Bolton', 'Ramsay Snow'),
('Ramsay Bolton', 'The Bastard of Bolton'),
('Renly Baratheon', 'The King in Highgarden'),
('Rhaegar Targaryen', 'The Last Dragon'),
('Robb Stark', 'The King Who Lost the North'),
('Robb Stark', 'The Young Wolf'),
('Robert Baratheon', 'Robert of House Baratheon, the First of His Name'),
('Robert Baratheon', 'The Stag King'),
('Robert Baratheon', 'The Usurper'),
('Robin Arryn', 'Sweetrobin'),
('Samwell Tarly', ' Sam the Slayer'),
('Samwell Tarly', 'Lady Piggy'),
('Samwell Tarly', 'Prince Pork-chop'),
('Samwell Tarly', 'Sam'),
('Samwell Tarly', 'Ser Piggy'),
('Sandor Clegane', 'Dog'),
('Sandor Clegane', 'The Hound'),
('Sansa Stark', 'Alayne'),
('Sansa Stark', 'Little Bird'),
('Sansa Stark', 'Little Dove'),
('Selyse Baratheon', 'Selyse Florent'),
('Stannis Baratheon', 'Son of Fire'),
('Stannis Baratheon', 'Stannis of House Baratheon, First of His Name'),
('Stannis Baratheon', 'The Chosen One'),
('Stannis Baratheon', 'The King in the Narrow Sea'),
('Stannis Baratheon', 'The Lord'),
('Stannis Baratheon', 'Warrior of Light'),
('Theon Greyjoy', 'Reek'),
('Theon Greyjoy', 'The Prince of Winterfell'),
('Thoros', 'Thoros of Myr'),
('Timett', 'Timett One-Eye'),
('Timett', 'Timett, son of Timett'),
('Tommen Baratheon', 'Tommen of the House Baratheon the First of His Name'),
('Tormund', 'Tormund Giantsbane'),
('Tyrion Lannister', 'Halfman'),
('Tyrion Lannister', 'The Imp'),
('Tyrion Lannister', 'The Little Lion'),
('Varys', 'Lord Varys'),
('Varys', 'The Eunuch'),
('Varys', 'The Spider'),
('Viserys Targaryen', 'Khal Rhaggat'),
('Viserys Targaryen', 'The Beggar King'),
('Viserys Targaryen', 'Viserys III Targaryen'),
('Viserys Targaryen', 'Viserys of House Targaryen the Third of His Name'),
('Walda Bolton', 'Fat Walda Frey'),
('Walder Frey', 'The Late Lord Frey'),
('Walder Frey', 'The Late Walder Frey'),
('Walder Rivers', 'Black Walder'),
('Walder Rivers', 'Black Walder Rivers');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CharacterAlias`
--
ALTER TABLE `CharacterAlias`
  ADD PRIMARY KEY (`character_name`,`alias_name`), ADD KEY `character_name` (`character_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
