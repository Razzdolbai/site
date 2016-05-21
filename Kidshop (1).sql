-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2016 at 03:50 AM
-- Server version: 5.1.40
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Kidshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE IF NOT EXISTS `Categories` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Url` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`ID`, `Url`, `Name`) VALUES
(1, 'Beluo', 'Бельё'),
(2, 'Verh_odezhda', 'Верхняя одежда'),
(3, 'Obuv', 'Обувь'),
(4, 'Igrushki', 'Игрушки'),
(5, 'T_S', 'Транспортные средства'),
(6, 'Info', 'О компании');

-- --------------------------------------------------------

--
-- Table structure for table `Company_info`
--

CREATE TABLE IF NOT EXISTS `Company_info` (
  `Info` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Company_info`
--

INSERT INTO `Company_info` (`Info`) VALUES
('Компания "Детёныш" создана в 2016 году и предлагает широкий выбор товаров для детей от 3 до 7 лет по ценам от производителя');

-- --------------------------------------------------------

--
-- Table structure for table `Tovary`
--

CREATE TABLE IF NOT EXISTS `Tovary` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Cat` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price_3y` int(11) NOT NULL,
  `Kol_3` int(11) NOT NULL,
  `Price_45y` int(11) NOT NULL,
  `Kol_45` int(11) NOT NULL,
  `Price_67y` int(11) NOT NULL,
  `Kol_67` int(11) NOT NULL,
  `Opisanie` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `Tovary`
--

INSERT INTO `Tovary` (`ID`, `ID_Cat`, `Name`, `Price_3y`, `Kol_3`, `Price_45y`, `Kol_45`, `Price_67y`, `Kol_67`, `Opisanie`) VALUES
(1, 1, 'Трусы', 30, 200, 50, 50, 70, 90, ''),
(2, 1, 'Майки', 50, 90, 70, 100, 100, 110, ''),
(3, 1, 'Футболки', 100, 10, 120, 50, 140, 90, ''),
(4, 1, 'Рубашки', 300, 20, 300, 20, 500, 20, ''),
(5, 1, 'Колготки', 200, 30, 230, 100, 250, 40, ''),
(6, 1, 'Носки', 10, 200, 12, 250, 15, 150, ''),
(7, 2, 'Куртка', 1500, 20, 1500, 25, 2500, 10, ''),
(8, 2, 'Комбинезон', 3000, 10, 3000, 5, 4000, 2, ''),
(9, 2, 'Джинсы', 500, 50, 700, 20, 900, 30, ''),
(10, 2, 'Спортивный костюм', 1000, 10, 1000, 10, 2000, 10, ''),
(11, 2, 'Шапка', 500, 30, 500, 25, 700, 20, ''),
(12, 2, 'Плащ', 700, 10, 1000, 5, 1200, 5, ''),
(13, 2, 'Пальто', 1500, 10, 1500, 10, 2500, 10, ''),
(14, 3, 'Тапки', 100, 30, 100, 10, 100, 30, ''),
(15, 3, 'Чешки', 50, 20, 50, 30, 70, 10, ''),
(16, 3, 'Кроссовки', 300, 40, 300, 10, 500, 5, ''),
(17, 3, 'Сандали', 300, 30, 300, 30, 500, 30, ''),
(18, 3, 'Босоножки', 500, 10, 700, 20, 1000, 5, ''),
(19, 3, 'Туфли', 1000, 30, 1000, 25, 1200, 20, ''),
(20, 3, 'Ботинки', 3000, 15, 3500, 15, 3500, 15, ''),
(21, 3, 'Сапоги', 3000, 10, 3500, 10, 4000, 10, ''),
(22, 4, 'Настольный футбол', 0, 0, 0, 0, 1500, 10, ''),
(23, 4, 'Лото', 0, 0, 300, 10, 300, 10, ''),
(24, 4, 'Плюшевый слон', 1500, 5, 1500, 5, 1500, 5, ''),
(25, 4, 'Подушка медведь', 3000, 2, 3000, 2, 3000, 2, ''),
(26, 4, 'Железная дорога', 3000, 4, 3000, 4, 3000, 4, ''),
(27, 4, 'Катер', 2000, 2, 2000, 2, 2000, 2, ''),
(28, 5, 'Трёхколёсный велосипед', 3000, 5, 3000, 5, 0, 0, ''),
(29, 5, 'Самокат', 0, 0, 1500, 10, 1500, 10, ''),
(30, 5, 'Четырёхколёсный велосипед', 0, 0, 5000, 5, 5000, 5, ''),
(31, 5, 'Педальный автомобиль', 4000, 2, 5000, 4, 0, 0, ''),
(32, 5, 'Велосипед', 0, 0, 0, 0, 5000, 10, '');
