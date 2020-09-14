-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 14, 2020 alle 20:48
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `concerti`
--

DROP TABLE IF EXISTS `concerti`;
CREATE TABLE `concerti` (
  `Titolo` varchar(30) NOT NULL,
  `Descrizione` text DEFAULT NULL,
  `Genere` varchar(15) NOT NULL,
  `Spettatori` int(11) DEFAULT NULL,
  `Link` text DEFAULT NULL,
  `Città` varchar(15) NOT NULL,
  `Data` date NOT NULL,
  `Immagine` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `concerti`
--

INSERT INTO `concerti` (`Titolo`, `Descrizione`, `Genere`, `Spettatori`, `Link`, `Città`, `Data`, `Immagine`) VALUES
('Celebration Day', 'Celebration Day è un film concerto del 2012 diretto da Dick Carruthers e incentrato sul concerto tenuto dai Led Zeppelin il 10 dicembre 2007 presso l\'O2 Arena di Londra. Il batterista John Bonham, morto nel 1980, venne sostituito dal figlio Jason. Ne venne tratto anche un album discografico omonimo.\r\n\r\nIl film è stato proiettato nelle sale di tutto il mondo per un solo giorno, il 17 ottobre 2012, come un evento unico.[2] Visto il grande successo riscosso dall\'iniziativa, l\'evento è stato replicato il 29 ottobre 2012.\r\n\r\nNelle 250 sale, distribuite in 180 cinema italiani, dove è stato proiettato sono arrivati complessivamente 48 mila spettatori, risultando il film più visto della giornata.[3]', 'Rock', 20000, 'https://www.youtube.com/watch?v=RqIn1HHORCE', 'Londra', '2012-10-12', 'celebration_day.jpg'),
('Festival di Woodstock', 'La Fiera della Musica e delle Arti di Woodstock, meglio conosciuto con il più semplice festival di Woodstock[1], fu una manifestazione che si svolse a Bethel, una piccola città rurale nello stato di New York, Stati Uniti d\'America, dal 15 al 18 agosto del 1969, all\'apice della diffusione della cultura hippie. Vi si riferisce spesso con l\'espressione 3 Days of Peace & Rock Music, \"tre giorni di pace e musica rock\". Furono stimati dai 400 ai 500.000 spettatori.\r\n\r\nIl nome ha origine dalla città di Woodstock, nella contea di Ulster, conosciuta per le sue attività artistiche (vi si organizzano festival d\'arte) e fu l\'ultima grande manifestazione del movimento che da allora si diffuse peraltro sempre più fuori dagli USA, dove era nato, pur senza la coesione e l\'originalità che avevano permesso negli anni sessanta eventi come il Monterey Pop festival, la Summer of Love a San Francisco e lo stesso festival di Woodstock.', 'Rock', 400000, 'https://www.youtube.com/watch?v=Ta54NMaLbxo', 'Woodstock', '1969-08-15', 'woodstock.jpg'),
('Live at Wembley', 'Esiste il concerto perfetto? 30 anni fa, in quel di Londra, facendo pagare meno di 15 sterline, i Queen ci sono andati vicino. Prendete il vecchio stadio di Wembley, che ora è stato demolito, riempitelo di spettatori fino all’ultimo centimetro disponibile. Poi agitate con cura e fate salire sul palco nientemeno che i Queen dell’epoca d’oro.\r\n\r\nLa notte del 12 Luglio 1986 è passata alla storia per il mitico live dei Queen a Wembley: doppio concerto per l’esattezza, visto che avevano suonato anche il giorno prima. Due show, entrambi sold-out, che alcuni considerano i live più incredibili mai messi in scena. Un’esperienza indimenticabile per chi c’era.', 'Rock', 72000, 'https://www.youtube.com/watch?v=gXXMsW3fHvk', 'Londra', '1985-06-13', 'live_at_wembley.jpg'),
('Pink Floyd at Pompeii', 'Buio. In perfetta stereofonia ascoltiamo il suono della grancassa di Nick Mason riprodurre il battito del cuore, imprescindibile inno alla vita e alla nascita di ognuno di noi. Dopo un minuto ecco vibrare vigoroso il gong di Roger Waters con un suono che sembra arrivare da lontano, al quale si aggiunge la tastiera di Richard Wright che come il caldo vento estivo sembra accarezzare la nostra pelle. A rompere il buio arrivano al minuto 1:48 le prime immagini, un incrocio di strade all’interno degli scavi archeologici dell’antica Pompei. Seguono altri scorci dei resti della città, vegliata in lontananza dall’alto dei suoi 1281 metri dal maestoso e silenzioso vulcano del Vesuvio.', 'Rock', NULL, 'https://www.youtube.com/watch?v=y-E7_VHLvkE', 'Pompei', '1971-10-07', 'pink_floyd_pompeii.jpg'),
('Rolling Stones Live in Rio', 'Il concerto fu dei record per molti motivi: un palco da 22 metri in altezza, 28 metri di lunghezza e una profondità di 60. Per un totale di 5 milioni di dollari spesi per l’organizzazione del concerto che coinvolse anche 15.000 agenti di pattuglia in città, alla fine non ci fu nessun ferito grave.\r\n\r\nDa “Jumpin Jack Flash” fino a “Satisfaction”, i fan si sono scatenati per tutta la notte con i Rolling Stones, ovviamente come per tutti i grandi eventi ci fu chi si accampò anche giorni prima per un posto in prima fila.', 'Rock', 1000000, 'https://www.youtube.com/watch?v=g5W4k6vD2WY', 'Rio de Janeiro', '2015-02-18', 'live_in_rio.jpg'),
('Rooftop Concert', 'Il Concerto dei Beatles sul tetto (detto anche \"Rooftop Concert\") fu l\'ultima esibizione pubblica dei Beatles dal vivo. Il 30 gennaio 1969, la band, con l\'aggiunta del tastierista Billy Preston, sorprese la città di Londra con un concerto improvvisato sul tetto dell\'edificio che ospitava gli uffici della Apple Corps al n° 3 di Savile Row. In 42 minuti, i Beatles suonarono nove takes di cinque loro canzoni prima di venire interrotti dalla polizia, chiamata in loco da alcuni residenti infastiditi dal rumore e dalla folla che si era spontaneamente radunata ai piedi dell\'edificio. La storica esibizione venne ripresa dal regista Michael Lindsay-Hogg per l\'inclusione nel film documentario Let It Be - Un giorno con i Beatles del 1970.', 'Rock', NULL, 'https://www.youtube.com/watch?v=NCtzkaL2t_Y', 'Londra', '1969-01-30', 'rooftop_concert.jpg'),
('The Concert in Central Park', 'Il 19 settembre 1981 il duo si riunì per un concerto gratuito a Central Park, a cui parteciparono più di 500.000 persone. Nel marzo successivo pubblicarono un album live dell\'evento.\r\n\r\nIl concerto fu anche filmato e trasmesso l\'anno dopo dalla HBO, successivamente fu distribuito in vari formati video. Il VHS e DVD contengono canzoni omesse nel CD: The Late Great Johnny Ace e Late in the Evening (Reprise). L\'esibizione di Johnny Ace venne interrotta da un fan che salì sul palco arrivando quasi a colpire Paul Simon.\r\n\r\nIl duo eseguì anche canzoni solo di Paul Simon, come: Me and Julio Down By the Schoolyard, American Tune, Late In the Evening, Slip Sliding Away, 50 Ways To Leave Your Lover, Still Crazy After All These Years e Kodachrome.', 'Folk', 500000, 'https://www.youtube.com/watch?v=NAEppFUWLfc', 'New York', '1981-09-19', 'concert_in_central_park.jpg');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `concerti`
--
ALTER TABLE `concerti`
  ADD PRIMARY KEY (`Titolo`),
  ADD KEY `city_constraint` (`Città`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `concerti`
--
ALTER TABLE `concerti`
  ADD CONSTRAINT `city_constraint` FOREIGN KEY (`Città`) REFERENCES `luoghi` (`Città`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
