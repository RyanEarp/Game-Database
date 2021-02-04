-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `Tournaments`

CREATE TABLE `Tournaments`
(
 `Tournament_ID`     int NOT NULL ,
 `Tournament_Name`   varchar(50) NOT NULL ,
 `Start_Date`        date NOT NULL ,
 `Prize_Pool`        decimal(12,2) NOT NULL ,
 `Location`          varchar(50) NOT NULL ,
 `Partcipant_Number` int NOT NULL ,

PRIMARY KEY (`Tournament_ID`)
);






-- ************************************** `Pro_Players`

CREATE TABLE `Pro_Players`
(
 `Rank_Number` int NOT NULL ,
 `Username`    varchar(50) NOT NULL ,
 `Real_Name`   varchar(50) NOT NULL ,
 `Country`     varchar(50) NULL ,
 `Team`        varchar(50) NULL ,
 `Age`         int NULL ,

PRIMARY KEY (`Rank_Number`)
);






-- ************************************** `Character_Info`

CREATE TABLE `Character_Info`
(
 `Character_ID`   int NOT NULL ,
 `Character_Name` varchar(50) NOT NULL ,
 `Debut_Game`     varchar(50) NULL ,
 `Weight`         int NOT NULL ,
 `Tier`           varchar(5) NOT NULL ,

PRIMARY KEY (`Character_ID`)
);






-- ************************************** `Rank`

CREATE TABLE `Rank`
(
 `Rank`            int NOT NULL ,
 `Position_Change` int NULL ,
 `Total_Earnings`  decimal(12,2) NULL ,
 `Score`           int NULL ,

PRIMARY KEY (`Rank`),
KEY `IDX_FK_RANK_PLAYER` (`Rank`),
CONSTRAINT `FK_RANK_PLAYER` FOREIGN KEY `IDX_FK_RANK_PLAYER` (`Rank`) REFERENCES `Pro_Players` (`Rank_Number`)
);






-- ************************************** `Player_Tournament`

CREATE TABLE `Player_Tournament`
(
 `Player_ID`        int NOT NULL ,
 `Tournament_ID`    int NOT NULL ,
 `Placement_Number` int NOT NULL ,
 `Placement_Prize`  decimal(12,2) NULL ,
 `Roster_ID`        int NOT NULL ,

PRIMARY KEY (`Player_ID`, `Tournament_ID`),
KEY `IDX_FK_TOURNAMENT_PLAYER_TOURNAMENT` (`Tournament_ID`),
CONSTRAINT `FK_TOURNAMENT_PLAYER_TOURNAMENT` FOREIGN KEY `IDX_FK_TOURNAMENT_PLAYER_TOURNAMENT` (`Tournament_ID`) REFERENCES `Tournaments` (`Tournament_ID`),
KEY `IDX_FK_PLAYER_PLAYER_TOURNAMENT` (`Player_ID`),
CONSTRAINT `FK_PLAYER_PLAYER_TOURNAMENT` FOREIGN KEY `IDX_FK_PLAYER_PLAYER_TOURNAMENT` (`Player_ID`) REFERENCES `Pro_Players` (`Rank_Number`),
KEY `IDX_FK_CHARACTER_INFO_PLAYER_TOURNAMENT` (`Roster_ID`),
CONSTRAINT `FK_CHARACTER_INFO_PLAYER_TOURNAMENT` FOREIGN KEY `IDX_FK_CHARACTER_INFO_PLAYER_TOURNAMENT` (`Roster_ID`) REFERENCES `Character_Info` (`Character_ID`)
);






-- ************************************** `Character_Played`

CREATE TABLE `Character_Played`
(
 `Player_Rank`      int NOT NULL ,
 `Roster_Number`    int NOT NULL ,
 `Number_Of_Events` int NULL ,

PRIMARY KEY (`Player_Rank`),
KEY `fkIdx_16` (`Player_Rank`),
CONSTRAINT `FK_16` FOREIGN KEY `fkIdx_16` (`Player_Rank`) REFERENCES `Pro_Players` (`Rank_Number`),
KEY `fkIdx_50` (`Roster_Number`),
CONSTRAINT `FK_50` FOREIGN KEY `fkIdx_50` (`Roster_Number`) REFERENCES `Character_Info` (`Character_ID`)
);





