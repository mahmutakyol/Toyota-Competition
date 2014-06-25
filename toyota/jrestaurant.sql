-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 01 Haz 2014, 19:31:51
-- Sunucu sürümü: 5.6.12
-- PHP Sürümü: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `jrestaurant`
--
CREATE DATABASE IF NOT EXISTS `jrestaurant` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `jrestaurant`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `r_rsrv`
--

CREATE TABLE IF NOT EXISTS `r_rsrv` (
  `RSRV_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `STATUS_ID` int(11) NOT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `CREATE_USER` int(11) NOT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  `UPDATE_USER` int(11) NOT NULL,
  PRIMARY KEY (`RSRV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `r_status`
--

CREATE TABLE IF NOT EXISTS `r_status` (
  `STATUS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` date DEFAULT NULL,
  `MEAL` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATE_USER` int(11) NOT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  `UPDATE_USER` int(11) NOT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`STATUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `r_upld_monthly`
--

CREATE TABLE IF NOT EXISTS `r_upld_monthly` (
  `MONTHLY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UP_DATE` date DEFAULT NULL,
  `MONTHLY_URL` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATE_USER` int(11) NOT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  `UPDATE_USER` int(11) NOT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`MONTHLY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `r_upld_monthly`
--

INSERT INTO `r_upld_monthly` (`MONTHLY_ID`, `UP_DATE`, `MONTHLY_URL`, `CREATE_USER`, `UPDATE_DATE`, `UPDATE_USER`, `CREATE_DATE`) VALUES
(1, '2014-04-08', 'lasdlkakl', 22, '2014-04-16', 121, '2014-04-23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `r_upload_help`
--

CREATE TABLE IF NOT EXISTS `r_upload_help` (
  `HELP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UP_DATE` date DEFAULT NULL,
  `HELP_URL` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CREATE_USER` int(11) NOT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  `UPDATE_USER` int(11) NOT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`HELP_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `r_upload_help`
--

INSERT INTO `r_upload_help` (`HELP_ID`, `UP_DATE`, `HELP_URL`, `CREATE_USER`, `UPDATE_DATE`, `UPDATE_USER`, `CREATE_DATE`) VALUES
(1, '2014-04-08', 'kjwqejk', 1, '2014-04-09', 25, '2014-04-16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `r_usblty`
--

CREATE TABLE IF NOT EXISTS `r_usblty` (
  `USBLTY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MOUNT` int(2) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `CREATE_USER` int(11) NOT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  `UPDATE_USER` int(11) NOT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`USBLTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `r_users`
--

CREATE TABLE IF NOT EXISTS `r_users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_NAME` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `CREATE_USER` int(11) NOT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  `UPDATE_USER` int(11) NOT NULL,
  `USERNAME` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHORITY` tinyint(1) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `r_users`
--

INSERT INTO `r_users` (`USER_ID`, `FIRST_NAME`, `LAST_NAME`, `PASSWORD`, `CREATE_DATE`, `CREATE_USER`, `UPDATE_DATE`, `UPDATE_USER`, `USERNAME`, `AUTHORITY`) VALUES
(1, 'Administrator', 'Administrator', '12345', '2014-05-14', 1, '2014-05-22', 1, 'admin', 1),
(2, 'User', 'User', '12345', '2014-05-25', 1, '2014-05-25', 1, 'user', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
