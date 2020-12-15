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
    `S-HOGID` int NOT NULL REFERENCES users(`HOGID`),
    PRIMARY KEY (`S-HOGID`)
);

CREATE TABLE `players` (
    `P-HOGID` int NOT NULL REFERENCES users(`HOGID`),
    PRIMARY KEY (`P-HOGID`)
);

CREATE TABLE `team` (
    `Team-ID` int NOT NULL,
    `Team-Name` varchar(50) NOT NULL,
    `C-HOGID` int NOT NULL REFERENCES players(`P-HOGID`),
    PRIMARY KEY (`Team-ID`)
);

CREATE TABLE `tournament` (
    `Tourn-ID` int NOT NULL,
    `Sport` varchar(50) NOT NULL,
    `Price` int,
    PRIMARY KEY (`Tourn-ID`)
);


CREATE TABLE `class` (
    `Class-ID` int NOT NULL,
    `Days` varchar(50),
    `Class-Cost` int,
    `Location` varchar(50),
    `Sports-Name` varchar(50),
    `Class-Start-Time` TIME(0),
    `Class-End-Time` TIME(0),
    `I-HOGID` int NOT NULL REFERENCES staff(`S-HOGID`),
    PRIMARY KEY (`Class-ID`)
);

CREATE TABLE `attend` (
    `A-Class-ID` int NOT NULL REFERENCES class(`Class-ID`),
    `A-P-HOGID` int NOT NULL REFERENCES players(`P-HOGID`),
    CONSTRAINT pk_attend PRIMARY KEY (`A-Class-ID`, `A-P-HOGID`)
);

CREATE TABLE `play_game` (
    `Team-ID-Home` int NOT NULL REFERENCES team(`Team-ID`),
    `Team-ID-Away` int NOT NULL REFERENCES team(`Team-ID`),
    `PG-Game-No` int NOT NULL REFERENCES game(`Game-No`),
    `PG-Tourn-ID` int NOT NULL REFERENCES tournament(`Tourn-ID`),
    CONSTRAINT pk_play_game PRIMARY KEY (`PG-Game-No`, `PG-Tourn-ID`)
);

CREATE TABLE `plays_for` (
    `Plays-P-HOGID` int NOT NULL REFERENCES players(`P-HOGID`),
    `Plays-Team-ID` int NOT NULL REFERENCES team(`Team-ID`),
    CONSTRAINT pk_plays_for PRIMARY KEY (`Plays-P-HOGID`, `Plays-Team-ID`)
);

CREATE TABLE `registration` (
    `R-Team-ID` int NOT NULL REFERENCES team(`Team-ID`),
    `R-Tourn-ID` int NOT NULL REFERENCES tournament(`Tourn-ID`),
    CONSTRAINT pk_play_game PRIMARY KEY (`R-Team-ID`, `R-Tourn-ID`)
);

CREATE TABLE `works_at` (
    `W-S-HOGID` int NOT NULL REFERENCES staff(`S-HOGID`),
    `W-Tourn-ID` int NOT NULL REFERENCES tournament(`Tourn-ID`),
    CONSTRAINT pk_plays_for PRIMARY KEY (`W-S-HOGID`, `W-Tourn-ID`)
);


CREATE TABLE `game` (
    `Game-No` int NOT NULL,
    `G-Tourn-ID` int NOT NULL REFERENCES tournament(`Tourn-ID`),
    `Score-team-home` int,
    `Score-team-away` int,
    CONSTRAINT pk_game PRIMARY KEY (`Game-No`, `G-Tourn-ID`)
);





