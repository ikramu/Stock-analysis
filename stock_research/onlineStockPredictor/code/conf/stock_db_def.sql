-- create database if not exist already
CREATE DATABASE IF NOT EXISTS testStocks;

-- create table for swedish stocks
DROP TABLE IF EXISTS `se`;
CREATE TABLE `se` (
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ticker` varchar(50) NOT NULL,
  `Open` decimal(50,2) DEFAULT NULL,
  `High` decimal(50,2) DEFAULT NULL,
  `Low` decimal(50,2) DEFAULT NULL,
  `Close` decimal(50,2) DEFAULT NULL,
  `Volume` bigint DEFAULT NULL,
  PRIMARY KEY (`Datetime`,`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

