USE omx;
DROP TABLE IF EXISTS `8TRA`;
CREATE TABLE `8TRA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `AAK`;
CREATE TABLE `AAK` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ABB`;
CREATE TABLE `ABB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ADDT-B`;
CREATE TABLE `ADDT-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `AF-B`;
CREATE TABLE `AF-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ALFA`;
CREATE TABLE `ALFA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ALIV-SDB`;
CREATE TABLE `ALIV-SDB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `AM1S`;
CREATE TABLE `AM1S` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ARION-SDB`;
CREATE TABLE `ARION-SDB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ARJO-B`;
CREATE TABLE `ARJO-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ASSA-B`;
CREATE TABLE `ASSA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ATCO-A`;
CREATE TABLE `ATCO-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ATCO-B`;
CREATE TABLE `ATCO-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ATRLJ-B`;
CREATE TABLE `ATRLJ-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `AXFO`;
CREATE TABLE `AXFO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `AZA`;
CREATE TABLE `AZA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `AZN`;
CREATE TABLE `AZN` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BALD-B`;
CREATE TABLE `BALD-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BEIJ-B`;
CREATE TABLE `BEIJ-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BETS-B`;
CREATE TABLE `BETS-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BHG`;
CREATE TABLE `BHG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BILL`;
CREATE TABLE `BILL` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BOL`;
CREATE TABLE `BOL` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BRAV`;
CREATE TABLE `BRAV` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BURE`;
CREATE TABLE `BURE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CAST`;
CREATE TABLE `CAST` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CATE`;
CREATE TABLE `CATE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `DOM`;
CREATE TABLE `DOM` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EKTA-B`;
CREATE TABLE `EKTA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ELUX-A`;
CREATE TABLE `ELUX-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ELUX-B`;
CREATE TABLE `ELUX-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EPI-A`;
CREATE TABLE `EPI-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EPI-B`;
CREATE TABLE `EPI-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EPRO-B`;
CREATE TABLE `EPRO-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EQT`;
CREATE TABLE `EQT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ERIC-A`;
CREATE TABLE `ERIC-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ERIC-B`;
CREATE TABLE `ERIC-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ESSITY-A`;
CREATE TABLE `ESSITY-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ESSITY-B`;
CREATE TABLE `ESSITY-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EVO`;
CREATE TABLE `EVO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FABG`;
CREATE TABLE `FABG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FOI-B`;
CREATE TABLE `FOI-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FPAR-A`;
CREATE TABLE `FPAR-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FPAR-D`;
CREATE TABLE `FPAR-D` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FPAR-PREF`;
CREATE TABLE `FPAR-PREF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `GETI-B`;
CREATE TABLE `GETI-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HEXA-B`;
CREATE TABLE `HEXA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HM-B`;
CREATE TABLE `HM-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HOLM-A`;
CREATE TABLE `HOLM-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HOLM-B`;
CREATE TABLE `HOLM-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HPOL-B`;
CREATE TABLE `HPOL-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HUFV-A`;
CREATE TABLE `HUFV-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HUSQ-A`;
CREATE TABLE `HUSQ-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HUSQ-B`;
CREATE TABLE `HUSQ-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ICA`;
CREATE TABLE `ICA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `INDT`;
CREATE TABLE `INDT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `INDU-A`;
CREATE TABLE `INDU-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `INDU-C`;
CREATE TABLE `INDU-C` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `INTRUM`;
CREATE TABLE `INTRUM` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `INVE-A`;
CREATE TABLE `INVE-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `INVE-B`;
CREATE TABLE `INVE-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `JM`;
CREATE TABLE `JM` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KIND-SDB`;
CREATE TABLE `KIND-SDB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KINV-A`;
CREATE TABLE `KINV-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KINV-B`;
CREATE TABLE `KINV-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KLED`;
CREATE TABLE `KLED` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KLOV-A`;
CREATE TABLE `KLOV-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KLOV-B`;
CREATE TABLE `KLOV-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KLOV-PREF`;
CREATE TABLE `KLOV-PREF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LATO-B`;
CREATE TABLE `LATO-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LIFCO-B`;
CREATE TABLE `LIFCO-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LOOMIS`;
CREATE TABLE `LOOMIS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LUMI`;
CREATE TABLE `LUMI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LUND-B`;
CREATE TABLE `LUND-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LUNE`;
CREATE TABLE `LUNE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MCOV-B`;
CREATE TABLE `MCOV-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MYCR`;
CREATE TABLE `MYCR` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NCC-A`;
CREATE TABLE `NCC-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NCC-B`;
CREATE TABLE `NCC-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NDA-SE`;
CREATE TABLE `NDA-SE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NENT-A`;
CREATE TABLE `NENT-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NENT-B`;
CREATE TABLE `NENT-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NIBE-B`;
CREATE TABLE `NIBE-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NOBI`;
CREATE TABLE `NOBI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NOLA-B`;
CREATE TABLE `NOLA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NYF`;
CREATE TABLE `NYF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PEAB-B`;
CREATE TABLE `PEAB-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PLAZ-B`;
CREATE TABLE `PLAZ-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PNDX-B`;
CREATE TABLE `PNDX-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `RATO-A`;
CREATE TABLE `RATO-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `RATO-B`;
CREATE TABLE `RATO-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `RESURS`;
CREATE TABLE `RESURS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SAAB-B`;
CREATE TABLE `SAAB-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SAGA-A`;
CREATE TABLE `SAGA-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SAGA-B`;
CREATE TABLE `SAGA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SAGA-D`;
CREATE TABLE `SAGA-D` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SAGA-PREF`;
CREATE TABLE `SAGA-PREF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SAND`;
CREATE TABLE `SAND` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SAVE`;
CREATE TABLE `SAVE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SBB-B`;
CREATE TABLE `SBB-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SBB-D`;
CREATE TABLE `SBB-D` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SCA-A`;
CREATE TABLE `SCA-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SCA-B`;
CREATE TABLE `SCA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SEB-A`;
CREATE TABLE `SEB-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SEB-C`;
CREATE TABLE `SEB-C` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SECT-B`;
CREATE TABLE `SECT-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SECU-B`;
CREATE TABLE `SECU-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SHB-A`;
CREATE TABLE `SHB-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SHB-B`;
CREATE TABLE `SHB-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SINCH`;
CREATE TABLE `SINCH` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SKA-B`;
CREATE TABLE `SKA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SKF-A`;
CREATE TABLE `SKF-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SKF-B`;
CREATE TABLE `SKF-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SOBI`;
CREATE TABLE `SOBI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SSAB-A`;
CREATE TABLE `SSAB-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SSAB-B`;
CREATE TABLE `SSAB-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `STE-A`;
CREATE TABLE `STE-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `STE-R`;
CREATE TABLE `STE-R` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SWEC-A`;
CREATE TABLE `SWEC-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SWEC-B`;
CREATE TABLE `SWEC-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SWED-A`;
CREATE TABLE `SWED-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SWMA`;
CREATE TABLE `SWMA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TEL2-A`;
CREATE TABLE `TEL2-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TEL2-B`;
CREATE TABLE `TEL2-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TELIA`;
CREATE TABLE `TELIA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `THULE`;
CREATE TABLE `THULE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TIETOS`;
CREATE TABLE `TIETOS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TIGO-SDB`;
CREATE TABLE `TIGO-SDB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TREL-B`;
CREATE TABLE `TREL-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VITR`;
CREATE TABLE `VITR` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VNE-SDB`;
CREATE TABLE `VNE-SDB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VOLV-A`;
CREATE TABLE `VOLV-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VOLV-B`;
CREATE TABLE `VOLV-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `WALL-B`;
CREATE TABLE `WALL-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `WIHL`;
CREATE TABLE `WIHL` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ACAD`;
CREATE TABLE `ACAD` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ADAPT`;
CREATE TABLE `ADAPT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ALIF-B`;
CREATE TABLE `ALIF-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ALIG`;
CREATE TABLE `ALIG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `AMBEA`;
CREATE TABLE `AMBEA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ANNE-B`;
CREATE TABLE `ANNE-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ANOD-B`;
CREATE TABLE `ANOD-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `AOI`;
CREATE TABLE `AOI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `AQ`;
CREATE TABLE `AQ` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ATT`;
CREATE TABLE `ATT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BACTI-B`;
CREATE TABLE `BACTI-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BALCO`;
CREATE TABLE `BALCO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BEIA-B`;
CREATE TABLE `BEIA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BERG-B`;
CREATE TABLE `BERG-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BESQ`;
CREATE TABLE `BESQ` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BETCO`;
CREATE TABLE `BETCO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BILI-A`;
CREATE TABLE `BILI-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BIOA-B`;
CREATE TABLE `BIOA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BIOG-B`;
CREATE TABLE `BIOG-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BIOT`;
CREATE TABLE `BIOT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BMAX`;
CREATE TABLE `BMAX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BONAV-A`;
CREATE TABLE `BONAV-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BONAV-B`;
CREATE TABLE `BONAV-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BONEX`;
CREATE TABLE `BONEX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BOOZT`;
CREATE TABLE `BOOZT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BRIN-B`;
CREATE TABLE `BRIN-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BTS-B`;
CREATE TABLE `BTS-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BUFAB`;
CREATE TABLE `BUFAB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BULTEN`;
CREATE TABLE `BULTEN` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CALTX`;
CREATE TABLE `CALTX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CAMX`;
CREATE TABLE `CAMX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CANTA`;
CREATE TABLE `CANTA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CAT-A`;
CREATE TABLE `CAT-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CAT-B`;
CREATE TABLE `CAT-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CCC`;
CREATE TABLE `CCC` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CEVI`;
CREATE TABLE `CEVI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CLA-B`;
CREATE TABLE `CLA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CLAS-B`;
CREATE TABLE `CLAS-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CLNK-B`;
CREATE TABLE `CLNK-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `COIC`;
CREATE TABLE `COIC` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `COLL`;
CREATE TABLE `COLL` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `COOR`;
CREATE TABLE `COOR` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CORE-A`;
CREATE TABLE `CORE-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CORE-B`;
CREATE TABLE `CORE-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CORE-PREF`;
CREATE TABLE `CORE-PREF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CRED-A`;
CREATE TABLE `CRED-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CTM`;
CREATE TABLE `CTM` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CTT`;
CREATE TABLE `CTT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `DIOS`;
CREATE TABLE `DIOS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `DUNI`;
CREATE TABLE `DUNI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `DUST`;
CREATE TABLE `DUST` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EAST`;
CREATE TABLE `EAST` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ELAN-B`;
CREATE TABLE `ELAN-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ELTEL`;
CREATE TABLE `ELTEL` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ENEA`;
CREATE TABLE `ENEA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ENQ`;
CREATE TABLE `ENQ` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EOLU-B`;
CREATE TABLE `EOLU-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FAG`;
CREATE TABLE `FAG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FG`;
CREATE TABLE `FG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FING-B`;
CREATE TABLE `FING-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FNM`;
CREATE TABLE `FNM` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `G5EN`;
CREATE TABLE `G5EN` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `GARO`;
CREATE TABLE `GARO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `GPG`;
CREATE TABLE `GPG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `GPG-PREF`;
CREATE TABLE `GPG-PREF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `GRNG`;
CREATE TABLE `GRNG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HANDI`;
CREATE TABLE `HANDI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HEBA-B`;
CREATE TABLE `HEBA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HLDX`;
CREATE TABLE `HLDX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HMS`;
CREATE TABLE `HMS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HNSA`;
CREATE TABLE `HNSA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HOFI`;
CREATE TABLE `HOFI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HTRO`;
CREATE TABLE `HTRO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HUM`;
CREATE TABLE `HUM` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `IAR-B`;
CREATE TABLE `IAR-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `IBT-B`;
CREATE TABLE `IBT-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `IMMNOV`;
CREATE TABLE `IMMNOV` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `INSTAL`;
CREATE TABLE `INSTAL` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `INWI`;
CREATE TABLE `INWI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `IPCO`;
CREATE TABLE `IPCO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `IRLAB-A`;
CREATE TABLE `IRLAB-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ITAB-B`;
CREATE TABLE `ITAB-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `IVSO`;
CREATE TABLE `IVSO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `JOMA`;
CREATE TABLE `JOMA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `K2A-B`;
CREATE TABLE `K2A-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `K2A-PREF`;
CREATE TABLE `K2A-PREF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KAR`;
CREATE TABLE `KAR` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KARO`;
CREATE TABLE `KARO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KFAST-B`;
CREATE TABLE `KFAST-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KNOW`;
CREATE TABLE `KNOW` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LAGR-B`;
CREATE TABLE `LAGR-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LEO`;
CREATE TABLE `LEO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LIAB`;
CREATE TABLE `LIAB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LIME`;
CREATE TABLE `LIME` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LUC`;
CREATE TABLE `LUC` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LUG`;
CREATE TABLE `LUG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MCAP`;
CREATE TABLE `MCAP` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MEKO`;
CREATE TABLE `MEKO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MIPS`;
CREATE TABLE `MIPS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MMGR-B`;
CREATE TABLE `MMGR-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MSON-A`;
CREATE TABLE `MSON-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MSON-B`;
CREATE TABLE `MSON-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MTG-A`;
CREATE TABLE `MTG-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MTG-B`;
CREATE TABLE `MTG-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MTRS`;
CREATE TABLE `MTRS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NCAB`;
CREATE TABLE `NCAB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NEWA-B`;
CREATE TABLE `NEWA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NMAN`;
CREATE TABLE `NMAN` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NOBINA`;
CREATE TABLE `NOBINA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NP3`;
CREATE TABLE `NP3` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NP3-PREF`;
CREATE TABLE `NP3-PREF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NPAPER`;
CREATE TABLE `NPAPER` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NWG`;
CREATE TABLE `NWG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `OASM`;
CREATE TABLE `OASM` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `OEM-B`;
CREATE TABLE `OEM-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ONCO`;
CREATE TABLE `ONCO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ORES`;
CREATE TABLE `ORES` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ORX`;
CREATE TABLE `ORX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PACT`;
CREATE TABLE `PACT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PRIC-B`;
CREATE TABLE `PRIC-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PROB`;
CREATE TABLE `PROB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `QLINEA`;
CREATE TABLE `QLINEA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `RAY-B`;
CREATE TABLE `RAY-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `READ`;
CREATE TABLE `READ` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `RECI-B`;
CREATE TABLE `RECI-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `REJL-B`;
CREATE TABLE `REJL-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `RROS`;
CREATE TABLE `RROS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SAS`;
CREATE TABLE `SAS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SCST`;
CREATE TABLE `SCST` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SHOT`;
CREATE TABLE `SHOT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SKIS-B`;
CREATE TABLE `SKIS-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `STEF-B`;
CREATE TABLE `STEF-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SVOL-A`;
CREATE TABLE `SVOL-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SVOL-B`;
CREATE TABLE `SVOL-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SYSR`;
CREATE TABLE `SYSR` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TETY`;
CREATE TABLE `TETY` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TFBANK`;
CREATE TABLE `TFBANK` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TOBII`;
CREATE TABLE `TOBII` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TRAC-B`;
CREATE TABLE `TRAC-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TRIAN-B`;
CREATE TABLE `TRIAN-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TROAX`;
CREATE TABLE `TROAX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VBG-B`;
CREATE TABLE `VBG-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VIT-B`;
CREATE TABLE `VIT-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VNV`;
CREATE TABLE `VNV` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VOLO`;
CREATE TABLE `VOLO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VOLO-PREF`;
CREATE TABLE `VOLO-PREF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `WBGR-B`;
CREATE TABLE `WBGR-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `XANO-B`;
CREATE TABLE `XANO-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `XSPRAY`;
CREATE TABLE `XSPRAY` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `XVIVO`;
CREATE TABLE `XVIVO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ABLI`;
CREATE TABLE `ABLI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ACE`;
CREATE TABLE `ACE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ACTI`;
CREATE TABLE `ACTI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ANOT`;
CREATE TABLE `ANOT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ARISE`;
CREATE TABLE `ARISE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ARP`;
CREATE TABLE `ARP` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ATIC`;
CREATE TABLE `ATIC` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ATORX`;
CREATE TABLE `ATORX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ATVEXA-B`;
CREATE TABLE `ATVEXA-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `B3`;
CREATE TABLE `B3` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BEGR`;
CREATE TABLE `BEGR` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BELE`;
CREATE TABLE `BELE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BINV`;
CREATE TABLE `BINV` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BONG`;
CREATE TABLE `BONG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BORG`;
CREATE TABLE `BORG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BOUL`;
CREATE TABLE `BOUL` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `BRG-B`;
CREATE TABLE `BRG-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CBTT-B`;
CREATE TABLE `CBTT-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CCOR-B`;
CREATE TABLE `CCOR-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CNCJO-B`;
CREATE TABLE `CNCJO-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `CRAD-B`;
CREATE TABLE `CRAD-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `DEDI`;
CREATE TABLE `DEDI` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `DORO`;
CREATE TABLE `DORO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `DURC-B`;
CREATE TABLE `DURC-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EGTX`;
CREATE TABLE `EGTX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ELEC`;
CREATE TABLE `ELEC` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ELOS-B`;
CREATE TABLE `ELOS-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EMPIR-B`;
CREATE TABLE `EMPIR-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ENDO`;
CREATE TABLE `ENDO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ENRO`;
CREATE TABLE `ENRO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ENRO-PREF-A`;
CREATE TABLE `ENRO-PREF-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ENRO-PREF-B`;
CREATE TABLE `ENRO-PREF-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EPIS-B`;
CREATE TABLE `EPIS-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ETX`;
CREATE TABLE `ETX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `EWRK`;
CREATE TABLE `EWRK` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FEEL`;
CREATE TABLE `FEEL` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FMM-B`;
CREATE TABLE `FMM-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `FPIP`;
CREATE TABLE `FPIP` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `GHP`;
CREATE TABLE `GHP` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `GIGSEK`;
CREATE TABLE `GIGSEK` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `GREEN`;
CREATE TABLE `GREEN` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HANZA`;
CREATE TABLE `HANZA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `HAV-B`;
CREATE TABLE `HAV-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `IMMU`;
CREATE TABLE `IMMU` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `IRRAS`;
CREATE TABLE `IRRAS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `IS`;
CREATE TABLE `IS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `JOSE`;
CREATE TABLE `JOSE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KABE-B`;
CREATE TABLE `KABE-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `KDEV`;
CREATE TABLE `KDEV` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `LAMM-B`;
CREATE TABLE `LAMM-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MAG`;
CREATE TABLE `MAG` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MAHA-A`;
CREATE TABLE `MAHA-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MEAB-B`;
CREATE TABLE `MEAB-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MIDW-A`;
CREATE TABLE `MIDW-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MIDW-B`;
CREATE TABLE `MIDW-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MOB`;
CREATE TABLE `MOB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MOMENT`;
CREATE TABLE `MOMENT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MSAB-B`;
CREATE TABLE `MSAB-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MULQ`;
CREATE TABLE `MULQ` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `MVIR-B`;
CREATE TABLE `MVIR-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NAXS`;
CREATE TABLE `NAXS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NELLY`;
CREATE TABLE `NELLY` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NETI-B`;
CREATE TABLE `NETI-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NGS`;
CREATE TABLE `NGS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NIL-B`;
CREATE TABLE `NIL-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NOTE`;
CREATE TABLE `NOTE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `NTEK-B`;
CREATE TABLE `NTEK-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ODD`;
CREATE TABLE `ODD` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `OP`;
CREATE TABLE `OP` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `OP-PREF`;
CREATE TABLE `OP-PREF` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `OP-PREFB`;
CREATE TABLE `OP-PREFB` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ORTI-A`;
CREATE TABLE `ORTI-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ORTI-B`;
CREATE TABLE `ORTI-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PENG-B`;
CREATE TABLE `PENG-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `POOL-B`;
CREATE TABLE `POOL-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PREC`;
CREATE TABLE `PREC` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PREV-B`;
CREATE TABLE `PREV-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `PROF-B`;
CREATE TABLE `PROF-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `QLIRO`;
CREATE TABLE `QLIRO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `RAIL`;
CREATE TABLE `RAIL` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `RIZZO-B`;
CREATE TABLE `RIZZO-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `RNBS`;
CREATE TABLE `RNBS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SANION`;
CREATE TABLE `SANION` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SEMC`;
CREATE TABLE `SEMC` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SENS`;
CREATE TABLE `SENS` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SINT`;
CREATE TABLE `SINT` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SOF-B`;
CREATE TABLE `SOF-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SRNKE-B`;
CREATE TABLE `SRNKE-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `STAR-A`;
CREATE TABLE `STAR-A` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `STAR-B`;
CREATE TABLE `STAR-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `STRAX`;
CREATE TABLE `STRAX` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `STWK`;
CREATE TABLE `STWK` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SVED-B`;
CREATE TABLE `SVED-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `SVIK`;
CREATE TABLE `SVIK` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `TRAD`;
CREATE TABLE `TRAD` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VICO`;
CREATE TABLE `VICO` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `VSSAB-B`;
CREATE TABLE `VSSAB-B` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `WISE`;
CREATE TABLE `WISE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `XBRANE`;
CREATE TABLE `XBRANE` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
DROP TABLE IF EXISTS `ZETA`;
CREATE TABLE `ZETA` (
`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
