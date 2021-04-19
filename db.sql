-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for notice_stage_enrico
CREATE DATABASE IF NOT EXISTS `notice_stage_enrico` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `notice_stage_enrico`;

-- Dumping structure for table notice_stage_enrico.schiphol_data
CREATE TABLE IF NOT EXISTS `schiphol_data` (
  `id` int(11) NOT NULL,
  `time` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `flight` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table notice_stage_enrico.schiphol_data: ~28 rows (approximately)
/*!40000 ALTER TABLE `schiphol_data` DISABLE KEYS */;
INSERT INTO `schiphol_data` (`id`, `time`, `destination`, `flight`, `company`, `status`) VALUES
	(0, '16:20', 'DUBAI (DXB)', 'AF 8435', 'KLM', 'VERTROKKEN'),
	(1, '16:40', 'IBIZA (IBZ)', 'NF 23', 'FLYBE', 'BOARDEN GESTART'),
	(2, '17:34', 'THESSALONIKI (SKG)', 'EFNS 2', 'AIR FRANCE', 'GATE GESLOTEN'),
	(3, '18:14', 'LISSABON (LIS)', 'KQ 786', 'CORENDON', 'OP SCHEMA'),
	(4, '18:15', 'TEL AVIV (TLV)', 'OP 74', 'KLM', 'VERTRAAGD (1 MIN)'),
	(5, '18:25', 'PARIJS DE GAULLE (CDG)', 'JK 62', 'EASYJET', 'GATE VERANDERD (E3)'),
	(6, '19:55', 'LONDEN HEATHROW (LHR)', 'CZ 7658', 'KLM', 'OP SCHEMA'),
	(7, '20:22', 'STRAATSBURG (SXB)', 'KL 2015', 'AIR FRANCE', 'GEANNULEERD'),
	(8, '22:52', 'FARO (FAO)', 'OR 687', 'TUI FLY', 'OP SCHEMA'),
	(9, '00:49', 'OPORTO (OPO)', 'KL 1711', 'KLM', 'GATE GEOPEND'),
	(10, '02:25', 'VENETIE (VCE)', 'KL 1651', 'KLM', 'AANKOMST'),
	(11, '02:28', 'BRUSSEL (BRU)', 'KL 1723', 'EASYJET', 'OP SCHEMA'),
	(12, '03:01', 'TOULOUSE (TLS)', 'KL 1301', 'CORENDON', 'BOARDEN BEZIG'),
	(13, '03:25', 'LYON (LYS)', 'QN 63', 'AIR FRANCE', 'OP SCHEMA'),
	(14, '16:20', 'DUBAI (DXB)', 'AF 8435', 'KLM', 'VERTROKKEN'),
	(15, '16:40', 'IBIZA (IBZ)', 'NF 23', 'FLYBE', 'BOARDEN GESTART'),
	(16, '17:34', 'THESSALONIKI (SKG)', 'EFNS 2', 'AIR FRANCE', 'GATE GESLOTEN'),
	(17, '18:14', 'LISSABON (LIS)', 'KQ 786', 'CORENDON', 'OP SCHEMA'),
	(18, '18:15', 'TEL AVIV (TLV)', 'OP 74', 'KLM', 'VERTRAAGD (1 MIN)'),
	(19, '18:25', 'PARIJS DE GAULLE (CDG)', 'JK 62', 'EASYJET', 'GATE VERANDERD (E3)'),
	(20, '19:55', 'LONDEN HEATHROW (LHR)', 'CZ 7658', 'KLM', 'OP SCHEMA'),
	(21, '20:22', 'STRAATSBURG (SXB)', 'KL 2015', 'AIR FRANCE', 'GEANNULEERD'),
	(22, '22:52', 'FARO (FAO)', 'OR 687', 'TUI FLY', 'OP SCHEMA'),
	(23, '00:49', 'OPORTO (OPO)', 'KL 1711', 'KLM', 'GATE GEOPEND'),
	(24, '02:25', 'VENETIE (VCE)', 'KL 1651', 'KLM', 'AANKOMST'),
	(25, '02:28', 'BRUSSEL (BRU)', 'KL 1723', 'EASYJET', 'OP SCHEMA'),
	(26, '03:01', 'TOULOUSE (TLS)', 'KL 1301', 'CORENDON', 'BOARDEN BEZIG'),
	(27, '03:25', 'LYON (LYS)', 'QN 63', 'AIR FRANCE', 'OP SCHEMA');
/*!40000 ALTER TABLE `schiphol_data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
