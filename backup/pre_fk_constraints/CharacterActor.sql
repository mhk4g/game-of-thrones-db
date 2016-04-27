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
-- Table structure for table `CharacterActor`
--

CREATE TABLE IF NOT EXISTS `CharacterActor` (
  `character_name` varchar(40) NOT NULL,
  `actor_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CharacterActor`
--

INSERT INTO `CharacterActor` (`character_name`, `actor_name`) VALUES
('Aemon', 'Peter Vaughan'),
('Alliser Thorne', 'Owen Teale'),
('Areo Hotah', 'DeObia Oparei'),
('Armeca', 'Sahara Knite'),
('Arya Stark', 'Maisie Williams'),
('Balon Greyjoy', 'Patrick Malahide'),
('Barristan Selmy', 'Ian McElhinney'),
('Beric Dondarrion', 'David Michael Scott (Season 1)'),
('Beric Dondarrion', 'Richard Dormer (Season 3)'),
('Bran Stark', 'Isaac Hempstead-Wright'),
('Brienne of Tarth', 'Gwendoline Christie'),
('Bronn', 'Jerome Flynn'),
('Brynden Tully', 'Clive Russell'),
('Catelyn Stark', 'Michelle Fairley'),
('Cersei Lannister', 'Lena Headey (Adult)'),
('Cersei Lannister', 'Nell Williams (Young, flashback in Seaso'),
('Chella', 'Unidentified'),
('Craster', 'Robert Pugh'),
('Daario Naharis', 'Ed Skrein (Season 3)'),
('Daario Naharis', 'Michiel Huisman (Season 4-present)'),
('Daenerys Targaryen', 'Emilia Clarke'),
('Davos Seaworth', 'Liam Cunningham'),
('Doran Martell', 'Alexander Siddig'),
('Eddard Stark', 'Luke Roberts (Young)'),
('Eddard Stark', 'Sean Bean (Adult)'),
('Eddard Stark', 'Sebastian Croft (Child)'),
('Edmure Tully', 'Tobias Menzies'),
('Ellaria Sand', 'Indira Varma'),
('Gared', 'Dermot Keaney'),
('Gendry', 'Joe Dempsie'),
('Gilly', 'Hannah Murray'),
('Gregor Clegane', 'Conan Stevens (Season 1)'),
('Gregor Clegane', 'HafÃ¾Ã³r JÃºlÃ­us BjÃ¶rnsson (Seasons 4 '),
('Gregor Clegane', 'Ian Whyte (Season 2)'),
('Grey Worm', 'Jacob Anderson'),
('High Sparrow', 'Jonathan Pryce'),
('Hodor', 'Kristian Nairn'),
('Hot Pie', 'Ben Hawkey'),
('Illyrio Mopatis', 'Roger Allam'),
('Ilyn Payne', 'Wilko Johnson'),
('Jaime Lannister', 'Nikolaj Coster-Waldau'),
('Janos Slynt', 'Dominic Carter'),
('Jaqen H''ghar', 'Tom Wlaschiha'),
('Jeor Mormont', 'James Cosmo'),
('Joffrey Baratheon', 'Jack Gleeson'),
('Jojen Reed', 'Thomas Brodie-Sangster'),
('Jon Arryn', 'John Standing'),
('Jon Snow', 'Kit Harington'),
('Jorah Mormont', 'Iain Glen'),
('Kevan Lannister', 'Ian Gelder'),
('Khal Drogo', 'Jason Momoa'),
('Lancel Lannister', 'Eugene Simon'),
('Locke', 'Noah Taylor'),
('Lommy Greenhands', 'Eros Vlahos'),
('Loras Tyrell', 'Finn Jones'),
('Lord of Bones', 'Edward Dogliani (Seasons 2-3)'),
('Lord of Bones', 'Hennessy (Season 5)'),
('Lord of Bones', 'Ross O'),
('Lothar Frey', 'Tom Brooke'),
('Luwin', 'Donald Sumpter'),
('Lysa Arryn', 'Kate Dickie'),
('Mace Tyrell', 'Roger Ashton-Griffiths'),
('Mance Rayder', 'CiarÃ¡n Hinds'),
('Margaery Tyrell', 'Natalie Dormer'),
('Meera Reed', 'Ellie Kendrick'),
('Melisandre', 'Carice van Houten'),
('Mhaegen', 'Antonia Christophers'),
('Missandei', 'Nathalie Emmanuel'),
('Mycah', 'Rhodri Hosking'),
('Myranda', 'Charlotte Hope'),
('Myrcella Baratheon', ''),
('Myrcella Baratheon', 'Aimee Richardson (Seasons 1-2)'),
('Myrcella Baratheon', 'Nell Tiger Free (Seasons 5-6)'),
('Nymeria Sand', 'Jessica Henwick'),
('Obara Sand', 'Keisha Castle-Hughes'),
('Oberyn Martell', 'Pedro Pascal'),
('Olenna Tyrell', 'Dame Diana Rigg'),
('Osha', 'Natalia Tena'),
('Petyr Baelish', 'Aidan Gillen'),
('Podrick Payne', 'Daniel Portman'),
('Polliver', 'Andy Kellegher'),
('Pyat Pree', 'Ian Hanmore'),
('Pycelle', 'Julian Glover'),
('Qhorin', 'Simon Armstrong'),
('Quaithe', 'Laura Pradelska'),
('Qyburn', 'Anton Lesser'),
('Ramsay Bolton', 'Iwan Rheon'),
('Renly Baratheon', 'Gethin Anthony'),
('Rickon Stark', 'Art Parkinson'),
('Robb Stark', 'Richard Madden'),
('Robert Baratheon', 'Mark Addy'),
('Robin Arryn', 'Lino Facioli'),
('Roose Bolton', 'Michael McElhatton'),
('Ros', 'EsmÃ© Bianco'),
('Roslin Frey', 'Alexandra Dowling'),
('Salladhor Saan', 'Lucian Msamati'),
('Samwell Tarly', 'John Bradley-West'),
('Sandor Clegane', 'Rory McCann'),
('Sansa Stark', 'Sophie Turner'),
('Shae', 'Sibel Kekilli'),
('Shagga', 'Mark Lewis Jones'),
('Shireen Baratheon', 'Kerry Ingram'),
('Spice King', 'Nicholas Blane'),
('Stannis Baratheon', 'Stephen Dillane'),
('Syrio Forel', 'Miltos Yerolemou'),
('Talisa Stark', 'Oona Chaplin'),
('Tansy', 'Jazzy de Lisser'),
('Theon Greyjoy', 'Alfie Allen'),
('Thoros', 'Paul Kaye'),
('Timett', 'Tobias Winter'),
('Tommen Baratheon', 'Callum Wharry (Seasons 1 and 2)'),
('Tommen Baratheon', 'Dean-Charles Chapman (Seasons 4-6)'),
('Tormund', 'Kristofer Hivju'),
('Trystane Martell', 'Toby Sebastian'),
('Tyene Sand', 'Rosabell Laurenti Sellers'),
('Tyrion Lannister', 'Peter Dinklage'),
('Tywin Lannister', 'Charles Dance'),
('Varys', 'Conleth Hill'),
('Violet', 'Stephanie Blacker'),
('Viserys Targaryen', 'Harry Lloyd'),
('Walda Bolton', 'Elizabeth Webster'),
('Walder Frey', 'David Bradley'),
('Walder Rivers', 'Tim Plester'),
('Yara Greyjoy', 'Gemma Whelan'),
('Ygritte', 'Rose Leslie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CharacterActor`
--
ALTER TABLE `CharacterActor`
  ADD PRIMARY KEY (`character_name`,`actor_name`), ADD KEY `character_name` (`character_name`), ADD KEY `character_name_2` (`character_name`), ADD KEY `character_name_3` (`character_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
