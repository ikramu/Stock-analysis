-- create database for swedish market
DROP DATABASE IF EXISTS omx;
CREATE DATABASE IF NOT EXISTS omx;
USE omx;

-- Table to store 2 minute resolution datafor training 
DROP TABLE IF EXISTS `Min2`;
CREATE TABLE `Min2` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table to store 5 minute resolution datafor training 
DROP TABLE IF EXISTS `Min5`;
CREATE TABLE `Min5` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table to store 15 minute resolution datafor training 
DROP TABLE IF EXISTS `Min15`;
CREATE TABLE `Min15` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table to store 1 day resolution datafor training 
DROP TABLE IF EXISTS `Day1`;
CREATE TABLE `Day1` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
