-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 15, 2020 alle 15:25
-- Versione del server: 10.4.13-MariaDB
-- Versione PHP: 7.4.8

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `band`
--
DROP TABLE IF EXISTS `band`;
CREATE TABLE `band`
(
  `Nome` varchar
(30) NOT NULL,
  `Genere` varchar
(25) NOT NULL,
  `Foto` varchar
(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `band`
--

INSERT INTO `band` (`
Nome`,
`Genere
`, `Foto`) VALUES
('Jefferson Airplanes', 'Rock', 'JeffersonAirplanes.jpg'),
('Jimi Hendrix Experience', 'Rock', 'Jimihendrixexp.jpg'),
('Led Zeppelin', 'Rock', 'led-zeppelin.jpg'),
('Pink Floyd', 'Rock', 'Pink_Floyd.jpg'),
('Queen', 'Rock', 'queen.jpg'),
('Rolling Stones', 'Rock', 'TheRollingStones.jpg'),
('Santana', 'Latin Rock', 'santana.jpg'),
('Simon & Garfunkel', 'Folk', 'simon&garfunkel.jpg'),
('The Animals', 'Rock', 'The animals.jpg'),
('The Beatles', 'Pop', 'Beatles.jpg');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `band`
--
ALTER TABLE `band`
ADD PRIMARY KEY
(`Nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
