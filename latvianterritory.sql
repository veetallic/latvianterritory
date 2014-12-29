-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 29, 2014 at 01:44 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `latvianterritory`
--

-- --------------------------------------------------------

--
-- Table structure for table `novadi`
--

CREATE TABLE IF NOT EXISTS `novadi` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nosaukums` varchar(25) NOT NULL,
  `tips` int(11) NOT NULL DEFAULT '1' COMMENT 'Novads, pagasts u.c.',
  `paklauts` int(11) NOT NULL DEFAULT '5' COMMENT 'Vecākelementa ID',
  PRIMARY KEY (`id`),
  KEY `paklauts` (`paklauts`),
  KEY `tips_id` (`tips`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Novadi un to teritoriālā iedalījuma vienības' AUTO_INCREMENT=126 ;

--
-- Truncate table before insert `novadi`
--

TRUNCATE TABLE `novadi`;
--
-- Dumping data for table `novadi`
--

INSERT INTO `novadi` (`id`, `nosaukums`, `tips`, `paklauts`) VALUES
(0000000001, 'Ādažu', 3, 0),
(0000000002, 'Aglonas', 3, 0),
(0000000003, 'Aizkraukles', 3, 0),
(0000000004, 'Aizputes', 3, 0),
(0000000005, 'Aknīstes', 3, 0),
(0000000006, 'Alojas', 3, 0),
(0000000007, 'Alsungas', 3, 0),
(0000000008, 'Alūksnes', 3, 0),
(0000000009, 'Amatas', 3, 0),
(0000000010, 'Apes', 3, 0),
(0000000011, 'Auces', 3, 0),
(0000000012, 'Babītes', 3, 0),
(0000000013, 'Baltinavas', 3, 0),
(0000000014, 'Balvu', 3, 0),
(0000000015, 'Bauskas', 3, 0),
(0000000016, 'Beverīnas', 3, 0),
(0000000017, 'Brocēnu', 3, 0),
(0000000018, 'Burtnieku', 3, 0),
(0000000019, 'Carnikavas', 3, 0),
(0000000020, 'Cēsu', 3, 0),
(0000000021, 'Cesvaines', 3, 0),
(0000000022, 'Ciblas', 3, 0),
(0000000023, 'Dagdas', 3, 0),
(0000000024, 'Daugavpils', 3, 0),
(0000000025, 'Dobeles', 3, 0),
(0000000026, 'Dundagas', 3, 0),
(0000000027, 'Durbes', 3, 0),
(0000000028, 'Engures', 3, 0),
(0000000029, 'Ērgļu', 3, 0),
(0000000030, 'Garkalnes', 3, 0),
(0000000031, 'Grobiņas', 3, 0),
(0000000032, 'Gulbenes', 3, 0),
(0000000033, 'Iecavas', 3, 0),
(0000000034, 'Ikšķiles', 3, 0),
(0000000035, 'Ilūkstes', 3, 0),
(0000000036, 'Inčukalna', 3, 0),
(0000000037, 'Jaunjelgavas', 3, 0),
(0000000038, 'Jaunpiebalgas', 3, 0),
(0000000039, 'Jaunpils', 3, 0),
(0000000040, 'Jēkabpils', 3, 0),
(0000000041, 'Jelgavas', 3, 0),
(0000000042, 'Kandavas', 3, 0),
(0000000043, 'Kārsavas', 3, 0),
(0000000044, 'Kocēnu', 3, 0),
(0000000045, 'Kokneses', 3, 0),
(0000000046, 'Krāslavas', 3, 0),
(0000000047, 'Krimuldas', 3, 0),
(0000000048, 'Krustpils', 3, 0),
(0000000049, 'Kuldīgas', 3, 0),
(0000000050, 'Ķeguma', 3, 0),
(0000000051, 'Ķekavas', 3, 0),
(0000000052, 'Lielvārdes', 3, 0),
(0000000053, 'Līgatnes', 3, 0),
(0000000054, 'Limbažu', 3, 0),
(0000000055, 'Līvānu', 3, 0),
(0000000056, 'Lubānas', 3, 0),
(0000000057, 'Ludzas', 3, 0),
(0000000058, 'Madonas', 3, 0),
(0000000059, 'Mālpils', 3, 0),
(0000000060, 'Mārupes', 3, 0),
(0000000061, 'Mazsalacas', 3, 0),
(0000000062, 'Mērsraga', 3, 0),
(0000000063, 'Naukšēnu', 3, 0),
(0000000064, 'Neretas', 3, 0),
(0000000065, 'Nīcas', 3, 0),
(0000000066, 'Ogres', 3, 0),
(0000000067, 'Olaines', 3, 0),
(0000000068, 'Ozolnieku', 3, 0),
(0000000069, 'Pārgaujas', 3, 0),
(0000000070, 'Pāvilostas', 3, 0),
(0000000071, 'Pļaviņu', 3, 0),
(0000000072, 'Preiļu', 3, 0),
(0000000073, 'Priekules', 3, 0),
(0000000074, 'Priekuļu', 3, 0),
(0000000075, 'Raunas', 3, 0),
(0000000076, 'Rēzeknes', 3, 0),
(0000000077, 'Riebiņu', 3, 0),
(0000000078, 'Rojas', 3, 0),
(0000000079, 'Ropažu', 3, 0),
(0000000080, 'Rucavas', 3, 0),
(0000000081, 'Rugāju', 3, 0),
(0000000082, 'Rūjienas', 3, 0),
(0000000083, 'Rundāles', 3, 0),
(0000000084, 'Salacgrīvas', 3, 0),
(0000000085, 'Salas', 3, 0),
(0000000086, 'Salaspils', 3, 0),
(0000000087, 'Saldus', 3, 0),
(0000000088, 'Saulkrastu', 3, 0),
(0000000089, 'Sējas', 3, 0),
(0000000090, 'Siguldas', 3, 0),
(0000000091, 'Skrīveru', 3, 0),
(0000000092, 'Skrundas', 3, 0),
(0000000093, 'Smiltenes', 3, 0),
(0000000094, 'Stopiņu', 3, 0),
(0000000095, 'Strenču', 3, 0),
(0000000096, 'Talsu', 3, 0),
(0000000097, 'Tērvetes', 3, 0),
(0000000098, 'Tukuma', 3, 0),
(0000000099, 'Vaiņodes', 3, 0),
(0000000100, 'Valkas', 3, 0),
(0000000101, 'Varakļānu', 3, 0),
(0000000102, 'Vārkavas', 3, 0),
(0000000103, 'Vecpiebalgas', 3, 0),
(0000000104, 'Vecumnieku', 3, 0),
(0000000105, 'Ventspils', 3, 0),
(0000000106, 'Viesītes', 3, 0),
(0000000107, 'Viļakas', 3, 0),
(0000000108, 'Viļānu', 3, 0),
(0000000109, 'Zilupes', 3, 0),
(0000000110, 'Aglonas', 1, 2),
(0000000111, 'Grāveru', 1, 2),
(0000000112, 'Kastuļinas', 1, 2),
(0000000113, 'Šķeltovas', 1, 2),
(0000000114, 'Aizkraukles', 1, 3),
(0000000115, 'Aizkraukles', 2, 3),
(0000000116, 'Aizputes', 1, 4),
(0000000117, 'Aizputes', 2, 4),
(0000000118, 'Cīravas', 1, 4),
(0000000119, 'Kalvenes', 1, 4),
(0000000120, 'Kazdangas', 1, 4),
(0000000121, 'Lažas', 1, 4),
(0000000122, 'Aknīstes', 1, 5),
(0000000123, 'Aknīstes', 2, 5),
(0000000124, 'Asares', 1, 5),
(0000000125, 'Gārsenes', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pilsetas`
--

CREATE TABLE IF NOT EXISTS `pilsetas` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nosaukums` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Republikas pilsētas' AUTO_INCREMENT=10 ;

--
-- Truncate table before insert `pilsetas`
--

TRUNCATE TABLE `pilsetas`;
--
-- Dumping data for table `pilsetas`
--

INSERT INTO `pilsetas` (`id`, `nosaukums`) VALUES
(0000000001, 'Daugavpils'),
(0000000002, 'Jēkabpils'),
(0000000003, 'Jelgava'),
(0000000004, 'Jūrmala'),
(0000000005, 'Liepāja'),
(0000000006, 'Rēzekne'),
(0000000007, 'Rīga'),
(0000000008, 'Valmiera'),
(0000000009, 'Ventspils');

-- --------------------------------------------------------

--
-- Table structure for table `tipi`
--

CREATE TABLE IF NOT EXISTS `tipi` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nosaukums` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Novadu tipi (novads, pilsēta, pagasts u.c.)' AUTO_INCREMENT=4 ;

--
-- Truncate table before insert `tipi`
--

TRUNCATE TABLE `tipi`;
--
-- Dumping data for table `tipi`
--

INSERT INTO `tipi` (`id`, `nosaukums`) VALUES
(0000000001, 'pagasts'),
(0000000002, 'pilsēta'),
(0000000003, 'novads');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
