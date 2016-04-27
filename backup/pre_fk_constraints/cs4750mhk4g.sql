-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2016 at 01:11 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `Characters`
--

CREATE TABLE IF NOT EXISTS `Characters` (
  `character_name` varchar(30) NOT NULL,
  `first_appearance` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `aka` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Characters`
--

INSERT INTO `Characters` (`character_name`, `first_appearance`, `status`, `aka`) VALUES
('Aemon', '"Lord Snow"', 'Deceased', 'Blind Maester in the Night''s Watch. [SPOILER]s of natural causes'),
('Aerys II Targaryen', 'N/A', 'Deceased', 'Crazy king who wanted to burn everyone. Killed by Jaime Lannister years before the show starts'),
('Alliser Thorne', '"Lord Snow"', 'Alive', 'Night''s watch guy who is always in a bad mood'),
('Areo Hotah', '"The House of Black and White"', 'Alive', 'Martell''s guard who carries a big spear thing and looks pissed constantly'),
('Armeca', '"You Win or You Die"', 'Alive', 'I think this is a type of car'),
('Arya Stark', '"Winter is Coming"', 'Alive', 'Awesome girl who likes to do murders. Currently an intern with the Faceless Men until she tries to borrow a [SPOILER] and stops being able to [SPOILER]'),
('Balon Greyjoy', '"The Night Lands"', 'Alive', 'Theon''s dad, who sucks'),
('Balon Swann', '"The Bear and the Maiden Fair"', 'Alive', 'Miscellaneous white male, move along folks'),
('Barristan Selmy', '"Lord Snow"', 'Deceased', 'Badass old master swordsman, kicked off the King''s Guard and joins Khaleesi. Gets [SPOILER]ed by a bunch of dudes in harpy masks'),
('Beric Dondarrion', '"A Golden Crown"', 'Deceased', 'Let''s just say he almost broke our database schema because he [SPOILER]s multiple times. Wears an eyepatch but does NOT pull it off'),
('Bran Stark', '"Winter is Coming"', 'Alive', 'Cripple who kind of sees the future, something involving a three-eyed raven, not too sure. Definitely cannot walk though'),
('Brienne of Tarth', '"What is Dead May Never Die"', 'Alive', 'Female knight who saves and then takes an emotionally charged bath with Jaime Lannister'),
('Bronn', '"Cripples, Bastards and Broken Things"', 'Alive', 'Tyrion''s sellsword who dgaf about anything and does pretty much whatever he wants. Good at swords'),
('Brynden Tully', '"Walk of Punishment"', 'Alive', 'Catelyn Stark''s brother? Maybe? Something about a black fish'),
('Catelyn Stark', '"Winter is Coming"', 'Deceased', 'Super good mom who let''s be honest made a few mistakes here and there and got herself [SPOILER]ed at her [SPOILER]''s wedding'),
('Cersei Lannister', '"Winter is Coming"', 'Alive', 'Queen and mother of Joffrey. She''d probably enjoy Philadelphia. City of brotherly love. Get it? Do you get it? Do you get it.'),
('Chella', '"The Pointy End"', 'Alive', 'One of those hill tribe people who Tyrion hires to help him escape the vale'),
('Craster', '"The North Remembers"', 'Deceased', 'Incestuous cabin dad'),
('Daario Naharis', '"Second Sons"', 'Alive', 'Khaleesi''s bodyguard with benefits'),
('Daenerys Targaryen', '"Winter is Coming"', 'Alive', 'YASSS QUEEEN, etc'),
('Davos Seaworth', '"The North Remembers"', 'Alive', 'Bearded sailor who can''t read too well and is missing some fingers'),
('Doran Martell', '"The House of Black and White"', 'Alive', 'Dr. Bashir from Star Trek DS-9. Prince of Dorne'),
('Eddard Stark', '"Winter is Coming"', 'Deceased', 'Frequent winter predictor, gets his [SPOILER] [SPOILER]ed off for being too noble'),
('Edmure Tully', '"Walk of Punishment"', 'Alive', 'The idiot Tully who [SPOILER]s up his dad''s funeral because he can''t shoot a [SPOILER]ing bow properly'),
('Elia Martell', 'N/A', 'Deceased', 'Very unfortunate young lady who isn''t actually even in the show. Sister of Oberyn'),
('Ellaria Sand', '"Two Swords"', 'Alive', 'Widow of Oberyn Martell who, driven by grief, gets a bob and tries to get revenge on Jaime by [SPOILER]ing his [SPOILER]'),
('Gared', 'N/A', 'Deceased', 'Uhhhhh [SPOILER]?'),
('Gendry', '"Cripples, Bastards and Broken Things"', 'Alive', 'Bastard son of Robert Baratheon raised in secret as a blacksmith. Arya''s pal'),
('Gilly', '"The North Remembers"', 'Alive', 'Wildling with an overbite and a heart of gold'),
('Gregor Clegane', '"Cripples, Bastards and Broken Things"', 'Alive', 'Very large, very mean individual. Turned into some kind of undead zombie knight by Qyburn'),
('Grey Worm', '"Kissed by Fire"', 'Alive', 'Unsullied eunuch who joins Khaleesi and kills people with a spear on a regular basis'),
('High Sparrow', '"High Sparrow"', 'Alive', 'Bernie Sanders'),
('Hodor', '"Winter is Coming"', 'Alive', 'Hodor'),
('Hot Pie', '"Fire and Blood"', 'Alive', 'Arya''s pal, a heavy set pie enthusiast'),
('Howland Reed', 'N/A', 'Alive', 'Leader of the Reed family. Is Howland even a name? Good [SPOILER]ing times here at the game of thrones db dot com'),
('Illyrio Mopatis', '"Winter is Coming"', 'Alive', 'Robed guy who brokers Khaleesi''s marriage to Drogo. Extremely fine robe. You have got to see this [SPOILER]ing robe'),
('Ilyn Payne', '"The Kingsroad"', 'Alive', 'Royal executioner, chops off [SPOILER] Stark''s head'),
('Jaime Lannister', '"Winter is Coming"', 'Alive', 'Cersei''s brother, father of the year, good at swords, missing a hand'),
('Janos Slynt', '"Cripples, Bastards and Broken Things"', 'Deceased', 'Lannister lackey who gets sent to the wall, cries a lot, and then gets be[SPOILER]ed'),
('Jaqen H''ghar', '"Fire and Blood"', 'Alive', 'Faceless man who serves the Many-faced-god. Arya is his murder intern. Gets really pissed when she [SPOILER]s a [SPOILER] from the gallery'),
('Jeor Mormont', '"Lord Snow"', 'Deceased', 'Leader of the Night''s Watch, gets [SPOILER]ed outside the wall. That''s why you don''t go outside the wall, folks'),
('Joffrey Baratheon', '"Winter is Coming"', 'Deceased', 'Little [SPOILER] who becomes king and terrorizes people until he gets his [SPOILER] [SPOILER]ed up at a wedding'),
('Jojen Reed', '"Dark Wings, Dark Words"', 'Deceased', 'Kid from Love Actually'),
('Jon Arryn', 'N/A', 'Deceased', 'Former hand of the king, gets poisoned and dies before the show starts'),
('Jon Snow', '"Winter is Coming"', 'Deceased', 'Bastard of Ned Stark. OR IS HE? Deceased. OR IS HE? [SPOILER]ed by his fellow Night Watchmen. Knows nothing'),
('Jorah Mormont', '"Winter is Coming"', 'Alive', 'Khaleesi''s bodyguard, exiled from Westeros for selling slaves. Lady Mary almost [SPOILER]s this dude in Season 2 of Downton Abbey'),
('Kevan Lannister', '"The Pointy End"', 'Alive', 'Some old guy who is presumably a Lannister and probably does battles and pays his debts and stuff'),
('Khal Drogo', '"Winter is Coming"', 'Deceased', 'Mongolian Dave Navarro'),
('Lancel Lannister', '"Lord Snow"', 'Alive', 'Former male concubine of Cersei, current cult member'),
('Locke', '"Dark Wings, Dark Words"', 'Deceased', 'Roose Bolton''s henchman, looks like an IT specialist. [SPOILER]s off Jaime Lannister''s [SPOILER] and helps Roose Bolton set up his Wifi'),
('Lommy Greenhands', '"Fire and Blood"', 'Deceased', 'Arya''s little street urchin pal who gets [SPOILER]ed by the King''s Guard'),
('Loras Tyrell', '"The Wolf and the Lion"', 'Unknown', 'Knight and secret lover of Renley Baratheon, until Renley gets [SPOILER]ed by a [SPOILER]'),
('Lord of Bones', '"The Prince of Winterfell"', 'Deceased', 'Wildling who is apparently in charge of everybody''s bones. Absolutely covered in bones. Bone enthusiast'),
('Lothar Frey', '"The Climb"', 'Alive', 'Remember during the red wedding when some dude [SPOILER]ed [SPOILER]''s pregnant [SPOILER]? That''s this dude'),
('Luwin', '"Winter is Coming"', 'Deceased', 'The Stark''s Maester at Winterfell. [SPOILER]ed by something, I think it was a bee sting or a peanut allergy'),
('Lyanna Mormont', 'N/A', 'Alive', '13 year old girl, leader of the Mormonts, who lives on Bear Island. Trust me I''m as confused as you are'),
('Lyanna Stark', 'N/A', 'Deceased', 'Ned Stark''s sister, former wife of Robert Baratheon who was abducted by Rhaegar Targaryen and started a war but died anyway. Nice war dude'),
('Lysa Arryn', '"The Wolf and the Lion"', 'Deceased', 'Crazy overprotective mom and widow of Jon Arryn who lives in the Aerie, breastfeeding her teenage son. She gets [SPOILER]n out a window by Peter Baelish'),
('Mace Tyrell', '"The Lion and the Rose"', 'Alive', 'Margaery and Loras''s dad, master of coin'),
('Mance Rayder', '"Valar Dohaeris"', 'Deceased', 'Leader of the Wildlings. [SPOILER]ed at the [SPOILER] but in an act of mercy Jon Snow [SPOILER]s him with a [SPOILER]'),
('Margaery Tyrell', '"What is Dead May Never Die"', 'Alive', 'Wife of Renley until he [SPOILER]s, wife of Joffrey until he [SPOILER]s, wife of Tommen who will probably [SPOILER] too. Redhead'),
('Meera Reed', '"Dark Wings, Dark Words"', 'Alive', 'Jojen Reed''s sister, wears a lot of animal pelts, constantly finding excuses to hold a bow and arrow'),
('Melisandre', '"The North Remembers"', 'Alive', 'Red witch who frequently demands that people be burned at the stake. Big fan of Lord of Light. Polyamorous'),
('Mhaegen', '"The Wolf and the Lion"', 'Uncertain', 'Prostitute and father of one of Robert Baratheon''s bastards who, you guessed it, [SPOILER]s'),
('Missandei', '"Valar Dohaeris"', 'Alive', 'Khaleesi''s translator, who speaks all the languages'),
('Mycah', 'N/A', 'Deceased', 'Butcher''s boy who hits Joffrey with a wooden sword and gets [SPOILER]ed by The Hound'),
('Myranda', '"The Bear and the Maiden Fair"', 'Deceased', 'Sadistic gal who is all about that Ramsay Bolton and gets herself [SPOILER] off a castle'),
('Myrcella Baratheon', '"Winter is Coming"', 'Deceased', 'Daughter of Cersei and Jaime, who is shipped to Dorne and things are goin pretty good and then she gets [SPOILER]ed'),
('Nymeria Sand', '"Sons of the Harpy"', 'Alive', 'The least memorable of the three Sand sisters who try to kill Jaime and Bron in Dorne'),
('Obara Sand', '"Sons of the Harpy"', 'Alive', 'The Sand sister who acts tough and throws a spear through a dude''s head at one point'),
('Oberyn Martell', '"Two Swords"', 'Deceased', 'Dornish prince who seems like he''s gonna save Tyrion and avenge his sister but then he gets carried away and The Mountain [SPOILER]s his [SPOILER]'),
('Olenna Tyrell', '"Dark Wings, Dark Words"', 'Alive', 'No-nonsense Grandma Tyrell who can be kind of a [SPOILER] but gets [SPOILER] done'),
('Osha', '"A Golden Crown"', 'Alive', 'Wildling lady who befriends Bran Stark, babysits Rickon Stark and Hodor'),
('Petyr Baelish', '"Lord Snow"', 'Alive', 'Short dude who constantly betrays everyone, has a very creepy crush on both Catelyn and Sansa Stark, [SPOILER]s Lysa Arryn out a window and who can blame him honestly for that last one'),
('Podrick Payne', '"The Night Lands"', 'Alive', 'Tyrion''s bumbling squire who saves his life during the siege and is beloved by prostitutes'),
('Polliver', '"What is Dead May Never Die"', 'Deceased', 'King''s Guard guy who kills Arya''s pal. Eventually gets hunted down and Arya [SPOILER]s him in the face with a sword'),
('Pyat Pree', '"Garden of Bones"', 'Deceased', 'Warlock of Qarth. Wears purple lip gloss, can do magic, but not enough magic to not [SPOILER], apparently, because he [SPOILER]s'),
('Pycelle', '"Lord Snow"', 'Alive', 'Member of the King''s Small Council.  Old bearded maester with affinity for prostitutes'),
('Qhorin', '"The Ghost of Harrenhal"', 'Deceased', 'Night''s Watch ranger who gets [SPOILER]ed during a merry jaunt outside the wall'),
('Quaithe', '"The Ghost of Harrenhal"', 'Alive', 'A lady from Asshai who talks to Jorah Mormont in Qarth. Wears a gimp mask and can see the future. No this is not a joke'),
('Qyburn', '"Valar Dohaeris"', 'Alive', 'Disgraced Maester who lost his title. Conducts weird experiments'),
('Ramsay Bolton', '"Dark Wings, Dark Words"', 'Alive', 'That dude who keeps torturing everyone. Formerly ''Ramsay Snow'''),
('Renly Baratheon', '"Lord Snow"', 'Deceased', 'Robert Baratheon''s younger brother who lets his lover talk him into trying to be king and gets [SPOILER]ed in the process'),
('Rhaegar Targaryen', 'N/A', 'Deceased', 'Dany''s eldest brother, killed by Robert Baratheon before the show''s start. OR WAS HE? Yeah he definitely was'),
('Rickon Stark', '"Winter is Coming"', 'Alive', 'Littlest Stark, often seen with Hodor and direwolf. Basically disappears after season 4'),
('Robb Stark', '"Winter is Coming"', 'Deceased', 'Oldest Stark, married Talisa and led a rebellion which he almost won until he got [SPOILER]ed by [SPOILER][SPOILER] when he [SPOILER]ed to eat a nice dinner for once'),
('Robert Baratheon', '"Winter is Coming"', 'Deceased', 'King of the Seven Kingdoms, big fat man with affinity for booze and prostitutes. Gets [SPOILER]ed by a [SPOILER], which is a pretty bad way to [SPOILER] if you ask me'),
('Robin Arryn', '"The Wolf and the Lion"', 'Alive', 'Lisa Arryn''s son. Still breastfeeds and has temper tantrums. The kind of little [SPOILER] who always talks about his foil Charizard but every time you ask to see it he''s all "lol gotta go"'),
('Roose Bolton', '"Garden of Bones"', 'Alive', 'Head of House Bolton, icy blue eyes and cold heart. Responsible for the [SPOILER] of numerous [SPOILER]s of the [SPOILER] family'),
('Ros', '"Winter is Coming"', 'Deceased', 'Red headed prostitute from Winterfell who works for Little Finger in King''s Landing until Joffrey [SPOILER]s her in the heart with a crossbow'),
('Roslin Frey', 'N/A', 'Alive', 'Daughter of Walder Frey who was supposed to marry Robb Stark but eventually marries Edmund Tully'),
('Salladhor Saan', '"The Night Lands"', 'Alive', 'Awesome pirate guy who is friends with Davos'),
('Samwell Tarly', '"Cripples, Bastards and Broken Things"', 'Alive', 'Sam the Slayer, member of the Night''s Watch. Gilly''s boyfriend. Clearly just George R.R. Martin'),
('Sandor Clegane', '"Winter is Coming"', 'Unknown', 'The Hound, big guy with a burned face who makes lots of bird metaphors'),
('Sansa Stark', '"Winter is Coming"', 'Alive', 'Daughter of Ned and Catelyn Stark. Arya''s boring older sister that is not into murder or adventure or anything else really'),
('Selwyn Tarth', 'N/A', 'Alive', 'Apparently Brienne of Tarth''s dad, who according to the one anecdote she tells about her past, is not supportive'),
('Selyse Baratheon', '"The North Remembers"', 'Deceased', 'Stannis''s boring loveless wife who is REALLY into the One True God, that is, until she gets [SPOILER]ed'),
('Shae', '"Baelor"', 'Deceased', 'Tyrion''s prostitute girlfriend who seems OK at first but eventually does some bad stuff like [SPOILER] his dad and so Tyrion has to [SPOILER] her in her sleep'),
('Shagga', '"The Pointy End"', 'Alive', 'Hill tribe leader who Tyrion charms into helping him escape the Vale'),
('Shireen Baratheon', '"Kissed by Fire"', 'Deceased', 'Stannis''s ashy daughter who Teaches Davos to read and eventually gets [SPOILER]ed because Stannis''s witch girlfriend thought that would be good for some reason'),
('Spice King', '"Garden of Bones"', 'Deceased', 'Metrosexual spice merchant who refuses to give Khaleesi some ships and then gets [SPOILER]ed by the Warlocks of Qarth for some reason'),
('Stannis Baratheon', '"The North Remembers"', 'Deceased', 'Robert Baratheon''s brother. Lives on an island with his witch mistress and his ashy daughter until he decides he should be king, but instead he [SPOILER]s under a tree'),
('Syrio Forel', '"Lord Snow"', 'Unknown', 'Arya''s fencing instructor. Kind of like Bob Ross, but with swords'),
('Talisa Stark', '"Garden of Bones"', 'Deceased', 'Robb Stark''s wife who unfortunately gets [SPOILER]ed about a hundred times'),
('Tansy', 'N/A', 'Deceased', 'Ramsay Bolton''s former lover whom his other more sadistic lover kills using a crossbow and dogs'),
('The Sealord', 'N/A', 'Alive', 'Leader of the free city of Bravos. Never depicted in the show but he sounds like a [SPOILER] badass if you ask me, and you basically did ask me by coming to this website'),
('Theon Greyjoy', '"Winter is Coming"', 'Alive', 'Sea ginger with a chip on his shoulder who gets [SPOILER]ated and changes his name to "Reek"'),
('Thoros', '"Dark Wings, Dark Words"', 'Alive', 'A guy who uses a flaming sword and oh he can also bring people back from the dead and never explain it? cool'),
('Timett', '"The Pointy End"', 'Alive', 'Hill tribe leader who helps Tyrion in the Vale'),
('Tommen Baratheon', '"Winter is Coming"', 'Alive', 'Joffrey''s younger, not terrible brother who, because he is kind of nice sometimes, will probably die horribly soon'),
('Tormund', '"Valar Dohaeris"', 'Alive', 'Bearded, red headed wildling guy who always has crazy eyes'),
('Trystane Martell', '"The House of Black and White"', 'Alive', 'Dornish prince and Myrcella''s betrothed, that is before she gets [SPOILER]ed on that boat'),
('Tyene Sand', '"Sons of the Harpy"', 'Alive', 'Oberyn''s daughter, a manic pixie dream girl who poisons Bronn with a dagger and then saves him. She can poison me any day if you know what I mean haha oh my god I am so lonely'),
('Tyrion Lannister', '"Winter is Coming"', 'Alive', 'If you don''t know who Tyrion Lannister is then email us so we can delete your account'),
('Tywin Lannister', '"You Win or You Die"', 'Deceased', 'Father of Tyrion, Jaime, and Cersei who is a total [SPOILER]. After one too many fatherly gaffes, Tyrion [SPOILER]s him with a crossbow while he''s on the [SPOILER]'),
('Varys', '"Lord Snow"', 'Alive', 'Spy master of King''s Landing. Wears a kimono 100% of the time'),
('Violet', 'N/A', 'Dead', 'One of like six girls that Ramsay Bolton and his crazy girlfriend kill using dogs'),
('Viserys Targaryen', '"Winter is Coming"', 'Deceased', 'A loser who says stuff like "Don''t wake the dragon!" but then he gets his [SPOILER] [SPOILER]ed up real quick by Drogo'),
('Walda Bolton', '"The Lion and the Rose"', 'Alive', 'Roose Bolton''s big boned wife and one of Walder Frey''s many daughters who are all ugl... I mean who all have really good personalities'),
('Walder Frey', '"Baelor"', 'Alive', 'Angry old lord of the riverlands who betrays Robb Stark out of spite like a little [SPOILER]'),
('Walder Rivers', '"The Climb"', 'Alive', 'Not too sure folks, move along, move along'),
('Xaro Xhoan Daxos', '"Garden of Bones"', 'Deceased', 'Supposedly rich dude in Qarth who tries to woo Khaleesi but is secretly broke and tries to steal her [SPOILER] so she has him [SPOILER]ed'),
('Yara Greyjoy', '"The Night Lands"', 'Alive', 'Theon''s sister, who is definitely more badass than him but also lets him grope her on a horse? You never know with these people'),
('Ygritte', '"The Old Gods and the New"', 'Deceased', 'Wildling redhead who falls in love with Jon Snow despite repeatedly claiming that he doesn''t know anything. [SPOILER]ed by a child with a bow and arrow and was later reincarnated by Vin Diesel');

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

-- --------------------------------------------------------

--
-- Table structure for table `Episode`
--

CREATE TABLE IF NOT EXISTS `Episode` (
  `episode_name` varchar(50) NOT NULL,
  `season` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Episode`
--

INSERT INTO `Episode` (`episode_name`, `season`, `number`) VALUES
('"A Golden Crown"', 1, 6),
('"A Man Without Honor"', 2, 7),
('"And Now His Watch is Ended"', 3, 4),
('"Baelor"', 1, 9),
('"Blackwater"', 2, 9),
('"Breaker of Chains"', 4, 3),
('"Cripples, Bastards and Broken Things"', 1, 4),
('"Dark Wings, Dark Words"', 3, 2),
('"Fire and Blood"', 1, 10),
('"First of His Name"', 4, 5),
('"Garden of Bones"', 2, 4),
('"Hardhome"', 5, 8),
('"High Sparrow"', 5, 3),
('"Kill the Boy"', 5, 5),
('"Kissed by Fire"', 3, 5),
('"Lord Snow"', 1, 3),
('"Mhysa"', 3, 10),
('"Mockingbird"', 4, 7),
('"Mother''s Mercy"', 5, 10),
('"Oathkeeper"', 4, 4),
('"Second Sons"', 3, 8),
('"Sons of the Harpy"', 5, 4),
('"The Bear and the Maiden Fair"', 3, 7),
('"The Children"', 4, 10),
('"The Climb"', 3, 6),
('"The Dance of Dragons"', 5, 9),
('"The Ghost of Harrenhal"', 2, 5),
('"The Gift"', 5, 7),
('"The House of Black and White"', 5, 2),
('"The Kingsroad"', 1, 2),
('"The Laws of Gods and Men"', 4, 6),
('"The Lion and the Rose"', 4, 2),
('"The Mountain and the Viper"', 4, 8),
('"The Night Lands"', 2, 2),
('"The North Remembers"', 2, 1),
('"The Old Gods and the New"', 2, 6),
('"The Pointy End"', 1, 8),
('"The Prince of Winterfell"', 2, 8),
('"The Rains of Castamere"', 3, 9),
('"The Wars to Come"', 5, 1),
('"The Watchers on the Wall"', 4, 9),
('"The Wolf and the Lion"', 1, 5),
('"Two Swords"', 4, 1),
('"Unbowed, Unbent, Unbroken"', 5, 6),
('"Valar Dohaeris"', 3, 1),
('"Valar Morghulis"', 2, 10),
('"Walk of Punishment"', 3, 3),
('"What Is Dead May Never Die"', 2, 3),
('"Winter is Coming"', 1, 1),
('"You Win or You Die"', 1, 7),
('N/A', 0, 0),
('rerw', 1, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `GOTUsers`
--

CREATE TABLE IF NOT EXISTS `GOTUsers` (
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `access_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GOTUsers`
--

INSERT INTO `GOTUsers` (`email`, `password`, `access_level`) VALUES
('ak5nt@virginia.edu', '2d8463b5c3a3c6c8854a175683fe6303', 1),
('bch3cn@virginia.edu', '7fecaf436eb80f4b36c121fe2d3f80e5', 1),
('bob@bob.com', '9f9d51bc70ef21ca5c14f307980a29d8', 4),
('level1@gmail.com', 'f97c5d29941bfb1b2fdab0874906ab82', 1),
('level2@gmail.com', 'b8a9f715dbb64fd5c56e7783c6820a61', 2),
('level3@gmail.com', '35d6d33467aae9a2e3dccb4b6b027878', 3),
('level4@gmail.com', '8cbad96aced40b3838dd9f07f6ef5772', 4),
('mes3fn@virginia.edu', 'ed6658e6f22583ed66fb5e5e735b9e63', 1),
('mhk4g@virginia.edu', 'ce86d7d02a229acfaca4b63f01a1171b', 1),
('newguy@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2);

--
-- Triggers `GOTUsers`
--
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
-- Indexes for table `CharacterActor`
--
ALTER TABLE `CharacterActor`
  ADD PRIMARY KEY (`character_name`,`actor_name`), ADD KEY `character_name` (`character_name`), ADD KEY `character_name_2` (`character_name`), ADD KEY `character_name_3` (`character_name`);

--
-- Indexes for table `CharacterAlias`
--
ALTER TABLE `CharacterAlias`
  ADD PRIMARY KEY (`character_name`,`alias_name`), ADD KEY `character_name` (`character_name`);

--
-- Indexes for table `CharacterDeath`
--
ALTER TABLE `CharacterDeath`
  ADD PRIMARY KEY (`character_name`), ADD UNIQUE KEY `character_name_2` (`character_name`), ADD KEY `character_name` (`character_name`);

--
-- Indexes for table `CharacterFaction`
--
ALTER TABLE `CharacterFaction`
  ADD PRIMARY KEY (`character_name`,`faction_name`), ADD KEY `character_name` (`character_name`);

--
-- Indexes for table `Characters`
--
ALTER TABLE `Characters`
  ADD PRIMARY KEY (`character_name`), ADD UNIQUE KEY `character_name` (`character_name`), ADD UNIQUE KEY `character_name_2` (`character_name`), ADD KEY `character_name_3` (`character_name`), ADD KEY `aka` (`aka`);

--
-- Indexes for table `City`
--
ALTER TABLE `City`
  ADD PRIMARY KEY (`city_name`), ADD UNIQUE KEY `city_name` (`city_name`);

--
-- Indexes for table `Creature`
--
ALTER TABLE `Creature`
  ADD PRIMARY KEY (`creature_name`), ADD UNIQUE KEY `creature_name` (`creature_name`), ADD KEY `creature_name_2` (`creature_name`), ADD KEY `affiliation` (`affiliation`);

--
-- Indexes for table `Episode`
--
ALTER TABLE `Episode`
  ADD PRIMARY KEY (`episode_name`), ADD KEY `episode_name` (`episode_name`);

--
-- Indexes for table `Faction`
--
ALTER TABLE `Faction`
  ADD PRIMARY KEY (`faction_name`), ADD UNIQUE KEY `faction_name` (`faction_name`), ADD KEY `leader_name` (`leader_name`);

--
-- Indexes for table `GOTUsers`
--
ALTER TABLE `GOTUsers`
  ADD PRIMARY KEY (`email`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `Region`
--
ALTER TABLE `Region`
  ADD PRIMARY KEY (`name`), ADD UNIQUE KEY `name` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
