-- create database for swedish market
DROP DATABASE IF EXISTS se;
CREATE DATABASE IF NOT EXISTS se;
USE se;

-- create table to be used for training 
DROP TABLE IF EXISTS `seTrain`;
CREATE TABLE `seTrain` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create table to be used for inference 
DROP TABLE IF EXISTS `seInfer`;
CREATE TABLE `seInfer` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create table to be used for inference 
DROP TABLE IF EXISTS `seVerdict`;
CREATE TABLE `seVerdict` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Actual` decimal(50,2) DEFAULT NULL,
  `Predicted` decimal(50,2) DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create database for US market
DROP DATABASE IF EXISTS us;
CREATE DATABASE IF NOT EXISTS us;
USE us;

-- create table to be used for training 
DROP TABLE IF EXISTS `usTrain`;
CREATE TABLE `usTrain` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create table to be used for inference 
DROP TABLE IF EXISTS `usInfer`;
CREATE TABLE `usInfer` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create table to be used for inference 
DROP TABLE IF EXISTS `usVerdict`;
CREATE TABLE `usVerdict` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Actual` decimal(50,2) DEFAULT NULL,
  `Predicted` decimal(50,2) DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- create database for crypto market
DROP DATABASE IF EXISTS crypto;
CREATE DATABASE IF NOT EXISTS crypto;
USE crypto;

-- create table to be used for training 
DROP TABLE IF EXISTS `crTrain`;
CREATE TABLE `crTrain` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create table to be used for inference 
DROP TABLE IF EXISTS `crInfer`;
CREATE TABLE `crInfer` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- create table to be used for inference 
DROP TABLE IF EXISTS `crVerdict`;
CREATE TABLE `crVerdict` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Actual` decimal(50,2) DEFAULT NULL,
  `Predicted` decimal(50,2) DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
