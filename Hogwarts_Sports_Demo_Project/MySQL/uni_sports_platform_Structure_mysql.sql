--
-- Database Name uni_sports_platform
--

CREATE DATABASE IF NOT EXISTS `uni_sports_platform` ;

USE `uni_sports_platform`;

--
-- Tables for the database `uni_sports_platform`
--

--
-- Drop all tables from the database to make sure that new and empty tables are generated
--

DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `staff`;
DROP TABLE IF EXISTS `players`;
DROP TABLE IF EXISTS `team`;
DROP TABLE IF EXISTS `tournament`;
DROP TABLE IF EXISTS `class`;
DROP TABLE IF EXISTS `attend`;
DROP TABLE IF EXISTS `play_game`;
DROP TABLE IF EXISTS `plays_for`;
DROP TABLE IF EXISTS `registration`;
DROP TABLE IF EXISTS `works_at`;
DROP TABLE IF EXISTS `game`;

--
-- Create each table
--

CREATE TABLE `users` (
    `HOGID` int NOT NULL,
    `Name` varchar(50) NOT NULL,
    PRIMARY KEY (`HOGID`)
);

CREATE TABLE `staff` (
    `S_HOGID` int NOT NULL REFERENCES users(`HOGID`),
    PRIMARY KEY (`S_HOGID`)
);

CREATE TABLE `players` (
    `P_HOGID` int NOT NULL REFERENCES users(`HOGID`),
    PRIMARY KEY (`P_HOGID`)
);

CREATE TABLE `team` (
    `Team_ID` int NOT NULL,
    `Team_Name` varchar(50) NOT NULL,
    `C_HOGID` int NOT NULL REFERENCES players(`P_HOGID`),
    PRIMARY KEY (`Team_ID`)
);

CREATE TABLE `tournament` (
    `Tourn_ID` int NOT NULL,
    `Sport` varchar(50) NOT NULL,
    `Price` int,
    PRIMARY KEY (`Tourn_ID`)
);

CREATE TABLE `class` (
    `Class_ID` int NOT NULL,
    `Days` varchar(50),
    `Class_Cost` int,
    `Location` varchar(50),
    `Sports_Name` varchar(50),
    `Class_Start_Time` TIME(0),
    `Class_End_Time` TIME(0),
    `I_HOGID` int NOT NULL REFERENCES staff(`S_HOGID`),
    PRIMARY KEY (`Class_ID`)
);

CREATE TABLE `attend` (
    `A_Class_ID` int NOT NULL REFERENCES class(`Class_ID`),
    `A_P_HOGID` int NOT NULL REFERENCES players(`P_HOGID`),
    CONSTRAINT pk_attend PRIMARY KEY (`A_Class_ID`, `A_P_HOGID`)
);

CREATE TABLE `play_game` (
    `Team_ID_Home` int NOT NULL REFERENCES team(`Team_ID`),
    `Team_ID_Away` int NOT NULL REFERENCES team(`Team_ID`),
    `PG_Game_No` int NOT NULL REFERENCES game(`Game_No`),
    `PG_Tourn_ID` int NOT NULL REFERENCES tournament(`Tourn_ID`),
    CONSTRAINT pk_play_game PRIMARY KEY (`PG_Game_No`, `PG_Tourn_ID`)
);

CREATE TABLE `plays_for` (
    `Plays_P_HOGID` int NOT NULL REFERENCES players(`P_HOGID`),
    `Plays_Team_ID` int NOT NULL REFERENCES team(`Team_ID`),
    CONSTRAINT pk_plays_for PRIMARY KEY (`Plays_P_HOGID`, `Plays_Team_ID`)
);

CREATE TABLE `registration` (
    `R_Team_ID` int NOT NULL REFERENCES team(`Team_ID`),
    `R_Tourn_ID` int NOT NULL REFERENCES tournament(`Tourn_ID`),
    CONSTRAINT pk_play_game PRIMARY KEY (`R_Team_ID`, `R_Tourn_ID`)
);

CREATE TABLE `works_at` (
    `W_Tourn_ID` int NOT NULL REFERENCES tournament(`Tourn_ID`),
    `W_S_HOGID` int NOT NULL REFERENCES staff(`S_HOGID`),
    CONSTRAINT pk_plays_for PRIMARY KEY (`W_S_HOGID`, `W_Tourn_ID`)
);

CREATE TABLE `game` (
    `Game_No` int NOT NULL,
    `G_Tourn_ID` int NOT NULL REFERENCES tournament(`Tourn_ID`),
    `Score_team_home` int,
    `Score_team_away` int,
    CONSTRAINT pk_game PRIMARY KEY (`Game_No`, `G_Tourn_ID`)
);
