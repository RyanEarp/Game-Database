-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2020 at 11:30 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s_rearp`
--

-- --------------------------------------------------------

--
-- Table structure for table `Character_Info`
--

CREATE TABLE `Character_Info` (
  `Character_ID` int(11) NOT NULL,
  `Character_Name` varchar(50) NOT NULL,
  `Debut_Game` varchar(50) DEFAULT NULL,
  `Weight` int(11) NOT NULL,
  `Tier` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Character_Info`
--

INSERT INTO `Character_Info` (`Character_ID`, `Character_Name`, `Debut_Game`, `Weight`, `Tier`) VALUES
(1, 'Mario', 'Donkey Kong', 98, 'A'),
(2, 'Donkey Kong', 'Donkey Kong', 127, 'D'),
(3, 'Link', 'The Legend of Zelda', 104, 'B'),
(4, 'Samus', 'Metroid', 108, 'B'),
(5, 'Yoshi', 'Super Mario World', 104, 'B'),
(6, 'Kirby', 'Kirby\'s Dream Land', 79, 'D'),
(7, 'Fox', 'Star Fox 64', 77, 'S'),
(8, 'Pikachu', 'Pokémon Red and Blue', 79, 'S'),
(9, 'Luigi', 'Mario Bros.', 97, 'B'),
(10, 'Ness', 'EarthBound', 94, 'B'),
(11, 'Captain Falcon', 'F-Zero', 104, 'C'),
(12, 'Jigglypuff', 'Pokémon Red and Green', 68, 'C'),
(13, 'Peach', 'Super Mario Bros.', 89, 'S'),
(14, 'Bowser', 'Super Mario Bros.', 135, 'B'),
(15, 'Ice Climbers', 'Ice Climber', 92, 'C'),
(16, 'Sheik', ' The Legend of Zelda: Ocarina of Time ', 78, 'C'),
(17, 'Zelda', 'The Legend of Zelda', 85, 'B'),
(18, 'Dr. Mario', 'Dr. Mario', 98, 'D'),
(19, 'Pichu', 'Pokémon Gold and Silver', 62, 'A'),
(20, 'Falco', 'Star Fox', 82, 'B'),
(21, 'Marth', 'Fire Emblem', 90, 'B'),
(22, 'Young Link', 'The Legend of Zelda: Ocarina of Time', 88, 'A'),
(23, 'Ganondorf', 'The Legend of Zelda', 118, 'C'),
(24, 'Mewtwo', 'Pokémon Red and Green', 77, 'C'),
(25, 'Roy', 'Fire Emblem: The Binding Blade', 95, 'A'),
(26, 'Mr. Game and Watch', 'Mr. Game and Watch', 75, 'A'),
(28, 'Pit', 'Kid Icarus', 96, 'D'),
(29, 'Zero Suit Samus', 'Metroid', 80, 'S'),
(30, 'Wario', 'Super Mario Land 2', 107, 'S'),
(31, 'Snake', 'Metal Gear', 106, 'S'),
(32, 'Ike', 'Fire Emblem: Path of Radiance', 107, 'C'),
(33, 'Pokemon Trainer', 'Pokémon Red and Green Versions', 80, 'S'),
(36, 'Diddy Kong', 'Donkey Kong Country', 90, 'C'),
(37, 'Lucas', 'Mother 3', 94, 'C'),
(38, 'Sonic', 'Sonic the Hedgehog', 86, 'B'),
(39, 'King Dedede', 'Kirby\'s Dream Land', 127, 'C'),
(40, 'Olimar', 'Pikmin', 79, 'A'),
(41, 'Lucario', 'Pokémon Diamond and Pearl Versions', 92, 'C'),
(42, 'R.O.B.', '', 106, 'A'),
(43, 'Toon Link', 'The Legend of Zelda: The Wind Waker', 91, 'B'),
(44, 'Wolf', 'The Legend of Zelda: The Wind Waker', 92, 'A'),
(45, 'Villager', 'Animal Forest', 92, 'D'),
(46, 'Mega Man', 'Mega Man', 102, 'A'),
(47, 'Wii Fit TRAINER', 'Wii Fit', 96, 'C'),
(48, 'Rosaline & Luma', 'Super Mario Galaxy', 82, 'C'),
(49, 'Little Mac', 'Punch-Out!!', 87, 'F'),
(50, 'Greninja', 'Pokémon X and Y', 88, 'A'),
(51, 'Mii Brawler', 'Super Smash Bros. Ultimate', 94, 'F'),
(52, 'Mii Swordfighter', 'Super Smash Bros. Ultimate', 100, 'D'),
(53, 'Mii Gunner', 'Super Smash Bros. Ultimate', 104, 'C'),
(54, 'Palutena', 'Kid Icarus', 91, 'S'),
(55, 'Pac-Man', 'Pac-Man', 95, 'A'),
(56, 'Robin', 'Fire Emblem Awakening', 95, 'C'),
(57, 'Shulk', 'Xenoblade Chronicles', 97, 'A'),
(58, 'Bowser. Jr', 'Super Mario Sunshine', 108, 'A'),
(59, 'Duck Hunt', 'Duck Hunt', 86, 'C'),
(60, 'Ryu', 'Street Fighter', 103, 'B'),
(61, 'Cloud', 'Final Fantasy VII', 100, 'B'),
(62, 'Corrin', 'Fire Emblem Fates', 98, 'D'),
(63, 'Bayonetta', 'Bayonetta', 81, 'D'),
(64, 'Inkling', 'Splatoon', 94, 'S'),
(65, 'Ridley', 'Metroid', 107, 'D'),
(66, 'Simon', 'Castlevania', 107, 'C'),
(67, 'King K. Rool', 'Donkey Kong Country', 133, 'D'),
(68, 'Isabelle', 'Animal Crossing: New Leaf', 88, 'D'),
(69, 'Incineroar', 'Pokémon Sun and Moon', 116, 'D'),
(70, 'Piranha Plant', 'Super Mario Bros.', 112, 'D'),
(71, 'Joker', 'Persona 5', 93, 'S'),
(72, 'Hero', 'Dragon Quest', 101, 'B'),
(73, 'Banjo & Kazooie', 'Banjo-Kazooie', 106, 'B'),
(74, 'Terry', 'Fatal Fury: King of Fighters', 108, 'B'),
(75, 'Byleth', 'Fire Emblem: Three Houses', 97, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `Character_Played`
--

CREATE TABLE `Character_Played` (
  `Player_Rank` int(11) NOT NULL,
  `Roster_Number` int(11) NOT NULL,
  `Number_Of_Events` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Character_Played`
--

INSERT INTO `Character_Played` (`Player_Rank`, `Roster_Number`, `Number_Of_Events`) VALUES
(1, 71, 16),
(2, 13, 30),
(3, 30, 15),
(4, 54, 21),
(5, 29, 32),
(6, 26, 19),
(7, 42, 7),
(8, 30, 45),
(9, 40, 26),
(10, 7, 32),
(11, 46, 15),
(12, 55, 21);

-- --------------------------------------------------------

--
-- Table structure for table `Player_Tournament`
--

CREATE TABLE `Player_Tournament` (
  `Tournament_ID` int(11) NOT NULL,
  `Player_ID` int(11) NOT NULL,
  `Placement_Number` int(11) NOT NULL,
  `Placement_Prize` decimal(12,2) DEFAULT NULL,
  `Roster_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Player_Tournament`
--

INSERT INTO `Player_Tournament` (`Tournament_ID`, `Player_ID`, `Placement_Number`, `Placement_Prize`, `Roster_ID`) VALUES
(1, 1, 1, NULL, 71),
(2, 1, 2, '5141.00', 71),
(5, 1, 1, NULL, 71),
(7, 1, 1, '14310.00', 71),
(10, 1, 2, NULL, 71),
(13, 1, 2, '1764.00', 71),
(14, 1, 1, '12186.00', 71),
(15, 1, 1, '21204.00', 71),
(17, 1, 1, '5820.00', 71),
(18, 1, 1, NULL, 71),
(19, 1, 1, '4500.00', 71),
(20, 1, 7, '240.00', 32),
(21, 1, 7, NULL, 44),
(22, 1, 1, '16353.00', 21),
(23, 1, 2, '2478.00', 21),
(24, 1, 1, NULL, 21),
(25, 1, 4, NULL, 32),
(1, 2, 13, NULL, 13),
(2, 2, 3, '2570.00', 13),
(5, 2, 7, NULL, 13),
(7, 2, 2, '6938.00', 13),
(10, 2, 13, NULL, 13),
(13, 2, 1, '3616.00', 13),
(14, 2, 2, '6770.00', 13),
(15, 2, 4, '1413.00', 13),
(17, 2, 9, NULL, 13),
(18, 2, 2, NULL, 13),
(19, 2, 4, '800.00', 13),
(20, 2, 4, '962.00', 13),
(21, 2, 9, NULL, 13),
(22, 2, 4, '3468.00', 13),
(23, 2, 13, NULL, 13),
(24, 2, 3, NULL, 13),
(26, 2, 5, '156.00', 13),
(1, 3, 3, NULL, 44),
(2, 3, 9, '205.00', 30),
(5, 3, 2, NULL, 30),
(7, 3, 13, '650.00', 33),
(13, 3, 7, '264.00', 30),
(14, 3, 3, '2978.00', 33),
(15, 3, 2, '7068.00', 33),
(18, 3, 33, '0.00', 30),
(19, 3, 2, '2200.00', 30),
(21, 3, 7, '0.00', 30),
(23, 3, 1, '4956.00', 30),
(24, 3, 9, '0.00', 30),
(25, 3, 1, NULL, 30),
(26, 3, 1, '2240.00', 30),
(1, 4, 9, '0.00', 54),
(2, 4, 9, '0.00', 54),
(5, 4, 9, '0.00', 54),
(7, 4, 3, '4770.00', 54),
(10, 4, 1, NULL, 54),
(13, 4, 3, '882.00', 54),
(15, 4, 17, '0.00', 54),
(17, 4, 7, '232.00', 54),
(18, 4, 17, '0.00', 54),
(19, 4, 5, '400.00', 54),
(20, 4, 9, '120.00', 54),
(21, 4, 4, NULL, 54),
(22, 4, 5, '2477.00', 54),
(23, 4, 7, '371.00', 54),
(24, 4, 17, '0.00', 54),
(25, 4, 2, NULL, 54),
(26, 4, 4, '224.00', 54),
(1, 5, 17, '0.00', 29),
(2, 5, 1, '8226.00', 29),
(7, 5, 9, '1084.00', 29),
(10, 5, 3, NULL, 29),
(13, 5, 4, '617.00', 29),
(15, 5, 13, '0.00', 29),
(17, 5, 2, '2328.00', 29),
(18, 5, 4, NULL, 29),
(19, 5, 3, '1400.00', 29),
(20, 5, 3, '1443.00', 29),
(21, 5, 25, '0.00', 29),
(23, 5, 17, '0.00', 29),
(24, 5, 25, '0.00', 29),
(26, 5, 9, '0.00', 29),
(1, 6, 2, NULL, 26),
(2, 6, 5, '616.00', 26),
(5, 6, 3, NULL, 26),
(7, 6, 4, '3035.00', 26),
(10, 6, 17, '0.00', 26),
(15, 6, 17, '0.00', 26),
(18, 6, 49, '0.00', 26),
(24, 6, 129, '0.00', 26),
(1, 7, 7, '0.00', 42),
(5, 7, 17, '0.00', 71),
(7, 7, 7, '1517.00', 44),
(10, 7, 33, '0.00', 71),
(15, 7, 7, '353.00', 71),
(21, 7, 2, NULL, 44),
(22, 7, 5, '2477.00', 44),
(23, 7, 33, '0.00', 44),
(24, 7, 5, NULL, 44),
(1, 8, 17, '0.00', 30),
(2, 8, 7, '411.00', 30),
(5, 8, 5, '5.00', 30),
(10, 8, 9, '0.00', 30),
(15, 8, 3, '3534.00', 30),
(21, 8, 9, '0.00', 30),
(22, 8, 3, '5451.00', 30),
(24, 8, 17, '0.00', 30),
(1, 9, 5, '0.00', 48),
(2, 9, 9, '205.00', 54),
(5, 9, 9, '0.00', 40),
(7, 9, 9, '1084.00', 40),
(10, 9, 9, '0.00', 40),
(13, 9, 5, '441.00', 48),
(15, 9, 9, '0.00', 40),
(18, 9, 5, '0.00', 40),
(19, 9, 9, '0.00', 40),
(20, 9, 5, '481.00', 40),
(21, 9, 9, '0.00', 40),
(22, 9, 2, '7929.00', 40),
(23, 9, 17, '0.00', 40),
(24, 9, 4, '0.00', 40),
(26, 9, 2, '1120.00', 48),
(1, 10, 9, '0.00', 7),
(2, 10, 7, '411.00', 7),
(5, 10, 4, '0.00', 7),
(7, 10, 7, '1517.00', 7),
(10, 10, 4, '0.00', 7),
(13, 10, 25, '0.00', 7),
(15, 10, 7, '353.00', 7),
(17, 10, 17, '0.00', 7),
(18, 10, 9, '0.00', 7),
(19, 10, 13, '0.00', 7),
(20, 10, 17, '0.00', 7),
(21, 10, 3, '0.00', 7),
(22, 10, 9, '1238.00', 7),
(23, 10, 5, '619.00', 7),
(24, 10, 5, '0.00', 7),
(25, 10, 3, '0.00', 7),
(26, 10, 5, '156.00', 7),
(1, 11, 17, '0.00', 46),
(4, 11, 3, '0.00', 46),
(5, 11, 13, '0.00', 46),
(8, 11, 7, '100.00', 46),
(12, 11, 1, '0.00', 30),
(15, 11, 9, '0.00', 46),
(23, 11, 25, '0.00', 46),
(1, 12, 4, '0.00', 55),
(4, 12, 4, '0.00', 55),
(5, 12, 9, '0.00', 55),
(7, 12, 5, '2168.00', 55),
(8, 12, 1, '5000.00', 55),
(10, 12, 5, '0.00', 55),
(12, 12, 2, '0.00', 55),
(21, 12, 5, '0.00', 55),
(23, 12, 13, '0.00', 55);

-- --------------------------------------------------------

--
-- Table structure for table `Pro_Players`
--

CREATE TABLE `Pro_Players` (
  `Rank_Number` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Real_Name` varchar(50) NOT NULL,
  `Team` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pro_Players`
--

INSERT INTO `Pro_Players` (`Rank_Number`, `Username`, `Real_Name`, `Team`, `Age`, `Country`) VALUES
(1, 'MKLeo', 'Leonardo Lopez Perez', 'T1', 19, 'Mexico'),
(2, 'Samsora', 'Ezra Samsora Morris', 'eUnited', 22, 'USA'),
(3, 'Tweek', 'Gavin Dempsey', 'Team SoloMid', 22, 'USA'),
(4, 'Nairo', 'Nairoby Quezada', 'NRG Esports', 23, 'USA'),
(5, 'Marss', 'Tyler Martins', 'Panda Global', 21, 'USA'),
(6, 'Maister', 'Enrique Hernández Solís', 'Spacestation Gaming', 20, 'Mexico'),
(7, 'zackray', 'Sota Okada', 'GameWith', 18, 'Japan'),
(8, 'Glutonny', 'William Belaid', 'Solary', 24, 'France'),
(9, 'Dabuz', 'Samuel Robert Buzby', 'Team Liquid', 26, 'USA'),
(10, 'Light', 'Paris Ramirez', 'Rogue', 20, 'USA'),
(11, 'Kameme', 'Takuto Ono', 'Ray Road Gaming', 23, 'Japan'),
(12, 'Tea', 'Takuma Hirooka', 'SUSANOO GAMING 8', NULL, 'Japan');

-- --------------------------------------------------------

--
-- Table structure for table `Rank`
--

CREATE TABLE `Rank` (
  `Rank` int(11) NOT NULL,
  `Position_Change` int(11) DEFAULT NULL,
  `Total_Earnings` decimal(12,2) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Rank`
--

INSERT INTO `Rank` (`Rank`, `Position_Change`, `Total_Earnings`, `Score`) VALUES
(1, 0, '184444.00', 100),
(2, 2, '46225.00', 93),
(3, -1, '70253.00', 93),
(4, 4, '92458.00', 90),
(5, -2, '56549.00', 89),
(6, 0, '10270.00', 87),
(7, 5, '9973.00', 85),
(8, 6, '48719.00', 85),
(9, -2, '101256.00', 82),
(10, 0, '21266.00', 81),
(11, 8, '10954.00', 81),
(12, 3, '7609.00', 80);

-- --------------------------------------------------------

--
-- Table structure for table `Tournaments`
--

CREATE TABLE `Tournaments` (
  `Tournament_ID` int(11) NOT NULL,
  `Tournament_Name` varchar(50) NOT NULL,
  `Start_Date` date NOT NULL,
  `Prize_Pool` decimal(12,2) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Participant_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tournaments`
--

INSERT INTO `Tournaments` (`Tournament_ID`, `Tournament_Name`, `Start_Date`, `Prize_Pool`, `Location`, `Participant_Number`) VALUES
(1, 'Frostbite 2020', '2020-02-21', '12800.00', 'Detroit', 1280),
(2, 'GENESIS 7', '2020-01-24', '20566.00', 'Oakland', 1699),
(3, 'Glitch 8', '2020-01-18', '10935.00', 'Laurel', 729),
(4, 'Let\'s Make Big Moves', '2020-01-03', '6500.00', 'New York', 650),
(5, '2GG: Kongo Saga', '2019-12-07', '9090.00', 'La Mirada', 909),
(6, 'DreamHack Atlanta 2019', '2019-11-15', '10000.00', 'Atlanta', 640),
(7, 'Smash Ultimate Summit 2', '2019-10-24', '50440.00', 'Los Angeles', 16),
(8, 'Thunder Smash 3', '2019-10-12', '10170.00', 'Detroit', 86),
(9, 'The Big House 9', '2019-10-04', '10170.00', 'Detroit', 1017),
(10, 'Mainstage', '2019-09-20', '7730.00', 'Ontario', 273),
(11, ' Glitch 7', '2019-09-14', '7660.00', 'Laurel', 566),
(12, 'SwitchFest 2019', '2019-08-31', '5000.00', 'La Mirada', 447),
(13, 'Shine 2019', '2019-08-23', '8820.00', 'Worcester', 882),
(14, 'Super Smash Con 2019', '2019-08-08', '27080.00', 'Chantilly', 2708),
(15, 'EVO 2019', '2019-08-02', '35340.00', 'Las Vegas', 3534),
(16, 'Low Tier City 7', '2019-07-12', '6950.00', 'Arlington', 695),
(17, 'CEO 2019', '2019-06-28', '11640.00', 'Daytona Beach', 1164),
(18, 'Smash \'N\' Splash 5', '2019-05-31', '16100.00', 'Wisconsin Dells', 1610),
(19, 'MomoCon 2019', '2019-05-23', '10000.00', 'Atlanta', 1250),
(20, 'Pound 2019', '2019-04-19', '12030.00', 'Laurel', 802),
(21, '2GG: Prime Saga', '2019-04-13', '8040.00', 'La Mirada', 804),
(22, 'Smash Ultimate Summit', '2019-03-08', '49557.00', 'Los Angeles', 16),
(23, 'Frostbite 2019', '2019-02-22', '12390.00', 'Detroit', 1239),
(24, 'GENESIS 6', '2019-02-01', '21050.00', 'Oakland', 2105),
(25, 'Glitch 6', '2019-01-19', '5510.00', 'Laurel', 551),
(26, 'Let\'s Make Moves', '2018-12-29', '4480.00', 'Somerset', 448);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Character_Info`
--
ALTER TABLE `Character_Info`
  ADD PRIMARY KEY (`Character_ID`);

--
-- Indexes for table `Character_Played`
--
ALTER TABLE `Character_Played`
  ADD PRIMARY KEY (`Player_Rank`),
  ADD KEY `IDX_FK_PLAYER_CHARACTER` (`Player_Rank`),
  ADD KEY `IDX_FK_CHARACTER_PLAYED_CHARACTER_INFO` (`Roster_Number`);

--
-- Indexes for table `Player_Tournament`
--
ALTER TABLE `Player_Tournament`
  ADD PRIMARY KEY (`Player_ID`,`Tournament_ID`),
  ADD KEY `IDX_FK_TOURNAMENT_PLAYER_TOURNAMENT` (`Tournament_ID`),
  ADD KEY `IDX_FK_PLAYER_PLAYER_TOURNAMENT` (`Player_ID`),
  ADD KEY `IDX_FK_CHARACTER_INFO_PLAYER_TOURNAMENT` (`Roster_ID`);

--
-- Indexes for table `Pro_Players`
--
ALTER TABLE `Pro_Players`
  ADD PRIMARY KEY (`Rank_Number`);

--
-- Indexes for table `Rank`
--
ALTER TABLE `Rank`
  ADD PRIMARY KEY (`Rank`),
  ADD KEY `IDX_FK_RANK_PLAYER` (`Rank`);

--
-- Indexes for table `Tournaments`
--
ALTER TABLE `Tournaments`
  ADD PRIMARY KEY (`Tournament_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Character_Played`
--
ALTER TABLE `Character_Played`
  ADD CONSTRAINT `FK_CHARACTER_PLAYED_CHARACTER_INFO` FOREIGN KEY (`Roster_Number`) REFERENCES `Character_Info` (`Character_ID`),
  ADD CONSTRAINT `FK_PLAYER_CHARACTER` FOREIGN KEY (`Player_Rank`) REFERENCES `Pro_Players` (`Rank_Number`);

--
-- Constraints for table `Player_Tournament`
--
ALTER TABLE `Player_Tournament`
  ADD CONSTRAINT `FK_CHARACTER_INFO_PLAYER_TOURNAMENT` FOREIGN KEY (`Roster_ID`) REFERENCES `Character_Info` (`Character_ID`),
  ADD CONSTRAINT `FK_PLAYER_PLAYER_TOURNAMENT` FOREIGN KEY (`Player_ID`) REFERENCES `Pro_Players` (`Rank_Number`),
  ADD CONSTRAINT `FK_TOURNAMENT_PLAYER_TOURNAMENT` FOREIGN KEY (`Tournament_ID`) REFERENCES `Tournaments` (`Tournament_ID`);

--
-- Constraints for table `Rank`
--
ALTER TABLE `Rank`
  ADD CONSTRAINT `FK_RANK_PLAYER` FOREIGN KEY (`Rank`) REFERENCES `Pro_Players` (`Rank_Number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
