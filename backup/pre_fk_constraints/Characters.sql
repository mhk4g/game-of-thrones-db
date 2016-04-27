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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Characters`
--
ALTER TABLE `Characters`
  ADD PRIMARY KEY (`character_name`), ADD UNIQUE KEY `character_name` (`character_name`), ADD UNIQUE KEY `character_name_2` (`character_name`), ADD KEY `character_name_3` (`character_name`), ADD KEY `aka` (`aka`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
