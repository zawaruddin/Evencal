-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 28. Mei 2013 jam 01:03
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `evencal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_date` date NOT NULL,
  `total_events` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`event_date`, `total_events`) VALUES
('2013-05-28', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_detail`
--

CREATE TABLE IF NOT EXISTS `event_detail` (
  `idevent` int(11) NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `event` varchar(200) NOT NULL,
  PRIMARY KEY (`idevent`),
  KEY `event_date` (`event_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `event_detail`
--

INSERT INTO `event_detail` (`idevent`, `event_date`, `event_time`, `event`) VALUES
(1, '2013-05-28', '20:18:13', 'Japan Class'),
(2, '2013-05-28', '20:18:13', 'Japan Class 2');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `event_detail`
--
ALTER TABLE `event_detail`
  ADD CONSTRAINT `event_detail_ibfk_1` FOREIGN KEY (`event_date`) REFERENCES `events` (`event_date`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
