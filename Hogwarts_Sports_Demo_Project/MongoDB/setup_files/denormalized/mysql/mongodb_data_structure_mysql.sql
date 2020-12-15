--
-- Database Name uni_sports_platform_mongo
--

CREATE DATABASE IF NOT EXISTS `uni_sports_platform_mongo` ;

USE `uni_sports_platform_mongo`;

--
-- Tables for the database `uni_sports_platform_mongo`
--

--
-- Drop all tables from the database to make sure that new and empty tables are generated
--

DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `tournament_registration`;
DROP TABLE IF EXISTS `tournament_workers`;
DROP TABLE IF EXISTS `class`;
DROP TABLE IF EXISTS `plays_for`;
DROP TABLE IF EXISTS `game`;

--
-- Create each table
--

CREATE TABLE `users` (
    `HOGID` int NOT NULL,
    `Name` varchar(50) NOT NULL,
    `Type` varchar(50) NOT NULL, -- either player or staff
    PRIMARY KEY (`HOGID`)
);

CREATE TABLE `tournament_registration` (
    `Tourn_ID` int NOT NULL,
    `Sport` varchar(50) NOT NULL,
    `Price` int,
    `Team_ID` int NOT NULL,
    `Team_Name` varchar(50) NOT NULL,
    `C_HOGID` int NOT NULL,
    `C_Name` varchar(50) NOT NULL,
    PRIMARY KEY (`Tourn_ID`, `Team_ID`)
);

CREATE TABLE `tournament_workers` (
    `Tourn_ID` int NOT NULL,
    `W_Name` varchar(50) NOT NULL,
    `W_HOGID` int NOT NULL,
    PRIMARY KEY (`Tourn_ID`, `W_HOGID`)
);

CREATE TABLE `class` (
    `Class_ID` int NOT NULL,
    `Days` varchar(50),
    `Class_Cost` int,
    `Location` varchar(50),
    `Sports_Name` varchar(50),
    `Class_Start_Time` TIME(0),
    `Class_End_Time` TIME(0),
    `I_HOGID` int NOT NULL,
    `I_Name` varchar(50) NOT NULL,
    `A_HOGID` int NOT NULL,
    `A_Name` varchar(50) NOT NULL,
    PRIMARY KEY (`Class_ID`, `A_HOGID`)
);

CREATE TABLE `plays_for` (
    `P_HOGID` int NOT NULL,
    `P_Name` varchar(50) NOT NULL,
    `Team_ID` int NOT NULL,
    `Team_Name` varchar(50) NOT NULL,
    `Type` varchar(50) NOT NULL, -- either player or captain
    PRIMARY KEY (`P_HOGID`)
);

CREATE TABLE `game` (
    `Team_ID_Home` int NOT NULL,
    `Team_Name_Home` varchar(50) NOT NULL,
    `Team_ID_Away` int NOT NULL,
    `Team_Name_Away` varchar(50) NOT NULL,
    `Game_No` int NOT NULL,
    `Tourn_ID` int NOT NULL,
    `Score_team_home` int,
    `Score_team_away` int,
    `Sport` varchar(50) NOT NULL,
    PRIMARY KEY (`Tourn_ID`,`Game_No`)
);
