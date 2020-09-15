-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 15, 2020 alle 14:57
-- Versione del server: 10.4.13-MariaDB
-- Versione PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Struttura della tabella `band`
--

CREATE TABLE `band` (
  `Nome` varchar(30) NOT NULL,
  `Genere` varchar(25) NOT NULL,
  `Foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `band`
--

INSERT INTO `band` (`Nome`, `Genere`, `Foto`) VALUES
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

-- --------------------------------------------------------

--
-- Struttura della tabella `brani`
--

CREATE TABLE `brani` (
  `Nome` varchar(35) NOT NULL,
  `Genere` varchar(20) NOT NULL,
  `Durata` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `brani`
--

INSERT INTO `brani` (`Nome`, `Genere`, `Durata`) VALUES
('50 Ways to Leave Your Lover', 'Folk', '00:04:23'),
('A Heart in New York', 'Folk', '00:02:49'),
('A Kind of Magic', 'Vocal ', '00:08:33'),
('Alberta', 'Traditional', '00:03:42'),
('America', 'Folk', '00:04:42'),
('Another One Bites the Dust', 'Rock', '00:05:54'),
('April Come She WIll', 'Folk', '00:02:37'),
('Before You Accuse Me', 'Blues', '00:03:44'),
('Black Dog', 'Rock', '00:05:53'),
('Bohemian Rhapsody', 'Rock', '00:05:49'),
('Bridge over Troubled Water', 'Pop', '00:04:48'),
('Brighton Rock', 'Rock', '00:09:10'),
('Crazy Little Thing Called Love', 'Rock', '00:05:33'),
('Dazed and Confused ', 'Rock', '00:11:43'),
('Dig a Pony', 'Rock', '00:03:44'),
('Don\'t Let Me Down', 'Rock', '00:03:12'),
('Don\'t Let Me Down (part 2)', 'Rock', '00:03:19'),
('For Your Life', 'Rock', '00:06:42'),
('Get Back', 'Rock', '00:03:05'),
('Get Back (part 2)', 'Rock', '00:03:01'),
('God Save the Queen', 'Traditional', '00:00:32'),
('Good Times Bad Times', 'Rock', '00:03:12'),
('Hammer to Fall', 'Rock', '00:06:02'),
('Hey Hey', 'Blues', '00:03:16'),
('Homeward Bound', 'Folk', '00:04:22'),
('I Want to Break Free', 'Rock', '00:03:36'),
('I\'ve Got a Feeling', 'Rock', '00:03:30'),
('I\'ve Got a Feeling (part 2)', 'Rock', '00:03:33'),
('In My Time Of Dying', 'Rock', '00:11:08'),
('In the Lap of the Gods', 'Rock', '00:02:29'),
('Is This the World We Created?', 'Rock', '00:02:57'),
('Kashmir', 'Rock', '00:09:06'),
('Kodachrome/Maybellene', 'Folk', '00:05:51'),
('Late in Evening', 'Folk', '00:04:19'),
('Layla', 'Blues', '00:04:46'),
('Lonely Stranger', 'Blues', '00:05:27'),
('Love of My life ', 'Rock', '00:04:05'),
('Malted Milk', 'Blues', '00:03:36'),
('Me and Julio Down by the Shoolyard', 'Folk', '00:03:22'),
('Misty Mountain Hop', 'Rock', '00:05:08'),
('Mrs. Robinson', 'Pop', '00:03:52'),
('No Qaurter', 'Rock', '00:09:19'),
('Nobody\'s Fault but Mine', 'Rock', '00:06:43'),
('Now I\'m Here', 'Rock', '00:07:04'),
('Old Friends', 'Pop', '00:02:57'),
('Old Love', 'Blues', '00:07:52'),
('One After 909', 'Rock', '00:02:46'),
('One Vision', 'Rock', '00:05:49'),
('Radio Ga Ga', 'Rock', '00:06:02'),
('Ramble On', 'Rock', '00:05:44'),
('Rock and Roll', 'Rock', '00:04:33'),
('Rollin\' and Tumblin\'', 'Blues', '00:04:12'),
('Running on Faith', 'Blues', '00:06:30'),
('San Francisco Bay', 'Blues', '00:03:23'),
('Scarborough Fair', 'Folk', '00:03:52'),
('Signe', 'Blues', '00:03:14'),
('Since I\'ve Been Loving You', 'Rock', '00:07:51'),
('Slip Slidin\' Away', 'Folk', '00:04:54'),
('Stairway to Heaven', 'Rock', '00:08:43'),
('Still Crazy After All These Years', 'Pop', '00:04:04'),
('Tear It Up', 'Rock', '00:02:21'),
('Tears in Heaven ', 'Ballad', '00:04:36'),
('The 59th Street Bridge Song', 'Folk', '00:02:01'),
('The Boxer', 'Pop', '00:06:02'),
('The Song Remains the Same', 'Rock', '00:05:46'),
('The Sound of Silence', 'Pop', '00:04:13'),
('Tie Your Mother Down', 'Rock', '00:04:06'),
('Trampled Under Foot', 'Rock', '00:06:19'),
('Tutti Frutti', 'Rock and Roll', '00:03:25'),
('Under Pressure', 'Pop Rock', '00:03:49'),
('Wake Up Little Susie', 'Folk', '00:02:19'),
('Walkin\' Blues', 'Blues', '00:03:37'),
('We Are the Champions', 'Rock', '00:04:01'),
('We Will Rock You', 'Rock', '00:02:46'),
('Who Wants to Live Forever', 'Rock', '00:04:07'),
('Whole Lotta Love', 'Rock', '00:07:26');

-- --------------------------------------------------------

--
-- Struttura della tabella `concerti`
--

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
('Celebration Day', 'Celebration Day è un film concerto del 2012 diretto da Dick Carruthers e incentrato sul concerto tenuto dai Led Zeppelin il 10 dicembre 2007 presso l\'O2 Arena di Londra. Il batterista John Bonham, morto nel 1980, venne sostituito dal figlio Jason. Ne venne tratto anche un album discografico omonimo.\r\n\r\nIl film è stato proiettato nelle sale di tutto il mondo per un solo giorno, il 17 ottobre 2012, come un evento unico.[2] Visto il grande successo riscosso dall\'iniziativa, l\'evento è stato replicato il 29 ottobre 2012.\r\n\r\nNelle 250 sale, distribuite in 180 cinema italiani, dove è stato proiettato sono arrivati complessivamente 48 mila spettatori, risultando il film più visto della giornata.[3]', 'Rock', 20000, 'https://www.youtube.com/watch?v=RqIn1HHORCE', 'Londra', '2020-12-07', 'celebration_day.jpg'),
('Festival di Woodstock', 'La Fiera della Musica e delle Arti di Woodstock, meglio conosciuto con il più semplice festival di Woodstock[1], fu una manifestazione che si svolse a Bethel, una piccola città rurale nello stato di New York, Stati Uniti d\'America, dal 15 al 18 agosto del 1969, all\'apice della diffusione della cultura hippie. Vi si riferisce spesso con l\'espressione 3 Days of Peace & Rock Music, \"tre giorni di pace e musica rock\". Furono stimati dai 400 ai 500.000 spettatori.\r\n\r\nIl nome ha origine dalla città di Woodstock, nella contea di Ulster, conosciuta per le sue attività artistiche (vi si organizzano festival d\'arte) e fu l\'ultima grande manifestazione del movimento che da allora si diffuse peraltro sempre più fuori dagli USA, dove era nato, pur senza la coesione e l\'originalità che avevano permesso negli anni sessanta eventi come il Monterey Pop festival, la Summer of Love a San Francisco e lo stesso festival di Woodstock.', 'Rock', 400000, 'https://www.youtube.com/watch?v=Ta54NMaLbxo', 'Woodstock', '1969-08-15', 'woodstock.jpg'),
('Live at Wembley', 'Esiste il concerto perfetto? 30 anni fa, in quel di Londra, facendo pagare meno di 15 sterline, i Queen ci sono andati vicino. Prendete il vecchio stadio di Wembley, che ora è stato demolito, riempitelo di spettatori fino all’ultimo centimetro disponibile. Poi agitate con cura e fate salire sul palco nientemeno che i Queen dell’epoca d’oro.\r\n\r\nLa notte del 12 Luglio 1986 è passata alla storia per il mitico live dei Queen a Wembley: doppio concerto per l’esattezza, visto che avevano suonato anche il giorno prima. Due show, entrambi sold-out, che alcuni considerano i live più incredibili mai messi in scena. Un’esperienza indimenticabile per chi c’era.', 'Rock', 72000, 'https://www.youtube.com/watch?v=gXXMsW3fHvk', 'Londra', '1985-06-13', 'live_at_wembley.jpg'),
('Pink Floyd at Pompeii', 'Buio. In perfetta stereofonia ascoltiamo il suono della grancassa di Nick Mason riprodurre il battito del cuore, imprescindibile inno alla vita e alla nascita di ognuno di noi. Dopo un minuto ecco vibrare vigoroso il gong di Roger Waters con un suono che sembra arrivare da lontano, al quale si aggiunge la tastiera di Richard Wright che come il caldo vento estivo sembra accarezzare la nostra pelle. A rompere il buio arrivano al minuto 1:48 le prime immagini, un incrocio di strade all’interno degli scavi archeologici dell’antica Pompei. Seguono altri scorci dei resti della città, vegliata in lontananza dall’alto dei suoi 1281 metri dal maestoso e silenzioso vulcano del Vesuvio.', 'Rock', NULL, 'https://www.youtube.com/watch?v=y-E7_VHLvkE', 'Pompei', '1971-10-07', 'pink_floyd_pompeii.jpg'),
('Rolling Stones Live in Rio', 'Il concerto fu dei record per molti motivi: un palco da 22 metri in altezza, 28 metri di lunghezza e una profondità di 60. Per un totale di 5 milioni di dollari spesi per l’organizzazione del concerto che coinvolse anche 15.000 agenti di pattuglia in città, alla fine non ci fu nessun ferito grave.\r\n\r\nDa “Jumpin Jack Flash” fino a “Satisfaction”, i fan si sono scatenati per tutta la notte con i Rolling Stones, ovviamente come per tutti i grandi eventi ci fu chi si accampò anche giorni prima per un posto in prima fila.', 'Rock', 1000000, 'https://www.youtube.com/watch?v=g5W4k6vD2WY', 'Rio de Janeiro', '2015-02-18', 'live_in_rio.jpg'),
('Rooftop Concert', 'Il Concerto dei Beatles sul tetto (detto anche \"Rooftop Concert\") fu l\'ultima esibizione pubblica dei Beatles dal vivo. Il 30 gennaio 1969, la band, con l\'aggiunta del tastierista Billy Preston, sorprese la città di Londra con un concerto improvvisato sul tetto dell\'edificio che ospitava gli uffici della Apple Corps al n° 3 di Savile Row. In 42 minuti, i Beatles suonarono nove takes di cinque loro canzoni prima di venire interrotti dalla polizia, chiamata in loco da alcuni residenti infastiditi dal rumore e dalla folla che si era spontaneamente radunata ai piedi dell\'edificio. La storica esibizione venne ripresa dal regista Michael Lindsay-Hogg per l\'inclusione nel film documentario Let It Be - Un giorno con i Beatles del 1970.', 'Rock', NULL, 'https://www.youtube.com/watch?v=NCtzkaL2t_Y', 'Londra', '1969-01-30', 'rooftop_concert.jpg'),
('The Concert in Central Park', 'Il 19 settembre 1981 il duo si riunì per un concerto gratuito a Central Park, a cui parteciparono più di 500.000 persone. Nel marzo successivo pubblicarono un album live dell\'evento.\r\n\r\nIl concerto fu anche filmato e trasmesso l\'anno dopo dalla HBO, successivamente fu distribuito in vari formati video. Il VHS e DVD contengono canzoni omesse nel CD: The Late Great Johnny Ace e Late in the Evening (Reprise). L\'esibizione di Johnny Ace venne interrotta da un fan che salì sul palco arrivando quasi a colpire Paul Simon.\r\n\r\nIl duo eseguì anche canzoni solo di Paul Simon, come: Me and Julio Down By the Schoolyard, American Tune, Late In the Evening, Slip Sliding Away, 50 Ways To Leave Your Lover, Still Crazy After All These Years e Kodachrome.', 'Folk', 500000, 'https://www.youtube.com/watch?v=NAEppFUWLfc', 'New York', '1981-09-19', 'concert_in_central_park.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `esecuzioni`
--

CREATE TABLE `esecuzioni` (
  `Brano` varchar(35) NOT NULL,
  `Band` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `esecuzioni`
--

INSERT INTO `esecuzioni` (`Brano`, `Band`) VALUES
('50 Ways to Leave Your Lover', 'Simon & Garfunkel'),
('A Heart in New York', 'Simon & Garfunkel'),
('A Kind of Magic', 'Queen'),
('America', 'Simon & Garfunkel'),
('Another One Bites the Dust', 'Queen'),
('April Come She WIll', 'Simon & Garfunkel'),
('Black Dog', 'Led Zeppelin'),
('Bohemian Rhapsody', 'Queen'),
('Bridge over Troubled Water', 'Simon & Garfunkel'),
('Brighton Rock', 'Queen'),
('Crazy Little Thing Called Love', 'Queen'),
('Dazed and Confused ', 'Led Zeppelin'),
('Dig a Pony', 'The Beatles'),
('Don\'t Let Me Down', 'The Beatles'),
('Don\'t Let Me Down (part 2)', 'The Beatles'),
('For Your Life', 'Led Zeppelin'),
('Get Back', 'The Beatles'),
('Get Back (part 2)', 'The Beatles'),
('God Save the Queen', 'The Beatles'),
('Good Times Bad Times', 'Led Zeppelin'),
('Hammer to Fall', 'Queen'),
('Homeward Bound', 'Simon & Garfunkel'),
('I Want to Break Free', 'Queen'),
('I\'ve Got a Feeling', 'The Beatles'),
('I\'ve Got a Feeling (part 2)', 'The Beatles'),
('In My Time Of Dying', 'Led Zeppelin'),
('In the Lap of the Gods', 'Queen'),
('Is This the World We Created?', 'Queen'),
('Kashmir', 'Led Zeppelin'),
('Kodachrome/Maybellene', 'Simon & Garfunkel'),
('Late in Evening', 'Simon & Garfunkel'),
('Love of My life ', 'Queen'),
('Me and Julio Down by the Shoolyard', 'Simon & Garfunkel'),
('Misty Mountain Hop', 'Led Zeppelin'),
('Mrs. Robinson', 'Simon & Garfunkel'),
('No Qaurter', 'Led Zeppelin'),
('Nobody\'s Fault but Mine', 'Led Zeppelin'),
('Now I\'m Here', 'Queen'),
('Old Friends', 'Simon & Garfunkel'),
('One After 909', 'The Beatles'),
('One Vision', 'Queen'),
('Radio Ga Ga', 'Queen'),
('Ramble On', 'Led Zeppelin'),
('Rock and Roll', 'Led Zeppelin'),
('Scarborough Fair', 'Simon & Garfunkel'),
('Since I\'ve Been Loving You', 'Led Zeppelin'),
('Slip Slidin\' Away', 'Simon & Garfunkel'),
('Stairway to Heaven', 'Led Zeppelin'),
('Still Crazy After All These Years', 'Simon & Garfunkel'),
('Tear It Up', 'Queen'),
('The 59th Street Bridge Song', 'Simon & Garfunkel'),
('The Boxer', 'Simon & Garfunkel'),
('The Song Remains the Same', 'Led Zeppelin'),
('The Sound of Silence', 'Simon & Garfunkel'),
('Tie Your Mother Down', 'Queen'),
('Trampled Under Foot', 'Led Zeppelin'),
('Tutti Frutti', 'Queen'),
('Under Pressure', 'Queen'),
('Wake Up Little Susie', 'Simon & Garfunkel'),
('We Are the Champions', 'Queen'),
('We Will Rock You', 'Queen'),
('Who Wants to Live Forever', 'Queen'),
('Whole Lotta Love', 'Led Zeppelin');

-- --------------------------------------------------------

--
-- Struttura della tabella `luoghi`
--

CREATE TABLE `luoghi` (
  `Città` varchar(20) NOT NULL,
  `Nazione` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `luoghi`
--

INSERT INTO `luoghi` (`Città`, `Nazione`) VALUES
('Londra', 'Inghilterra'),
('New York', 'Stati Uniti'),
('Pompei', 'Italia'),
('Rio de Janeiro', 'Brasile'),
('Woodstock', 'Stati Uniti');

-- --------------------------------------------------------

--
-- Struttura della tabella `musicisti`
--

CREATE TABLE `musicisti` (
  `Nome` varchar(15) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Nascita` date NOT NULL,
  `Morte` date DEFAULT NULL,
  `Band` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `musicisti`
--

INSERT INTO `musicisti` (`Nome`, `Cognome`, `Nascita`, `Morte`, `Band`) VALUES
('Art', 'Garfunkel', '1941-11-05', NULL, 'Simon & Garfunkel'),
('Brian', 'May', '1947-07-19', NULL, 'Queen'),
('Charlie', 'Watts', '1941-06-02', NULL, 'Rolling Stones'),
('David', 'Gilmour', '1946-03-06', NULL, 'Pink Floyd'),
('Freddie', 'Mercury', '1946-09-05', '1991-11-24', 'Queen'),
('George ', 'Harrison', '1943-02-25', '2001-11-29', 'The Beatles'),
('Jimmy', 'Page', '1944-01-09', NULL, 'Led Zeppelin'),
('John', 'Bonham', '1948-05-31', '1980-09-25', 'Led Zeppelin'),
('John', 'Deacon', '1951-08-19', NULL, 'Queen'),
('John', 'Lennon', '1940-10-09', '1980-12-08', 'The Beatles'),
('John Paul', 'Jones', '1946-01-03', NULL, 'Led Zeppelin'),
('Keitch', 'RIchards', '1943-12-18', NULL, 'Rolling Stones'),
('Mick', 'Jagger', '1943-07-26', NULL, 'Rolling Stones'),
('Nick', 'Mason', '1944-01-27', NULL, 'Pink Floyd'),
('Paul', 'McCartney', '1942-07-18', NULL, 'The Beatles'),
('Paul', 'Simon', '1941-10-13', NULL, 'Simon & Garfunkel'),
('Richard', 'Wright', '1943-07-28', '2008-09-15', 'Pink Floyd'),
('Ringo', 'Starr', '1940-07-07', NULL, 'The Beatles'),
('Robert', 'Plant', '1948-08-20', NULL, 'Led Zeppelin'),
('Roger ', 'Taylor', '1949-07-26', NULL, 'Queen'),
('Roger ', 'Waters', '1943-09-06', NULL, 'Pink Floyd'),
('Ronnie', 'Wood', '1947-06-01', NULL, 'Rolling Stones'),
('Syd', 'Barret', '1946-01-06', '2006-07-07', 'Pink Floyd');

-- --------------------------------------------------------

--
-- Struttura della tabella `scalette`
--

CREATE TABLE `scalette` (
  `Concerto` varchar(30) NOT NULL,
  `Brano` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `scalette`
--

INSERT INTO `scalette` (`Concerto`, `Brano`) VALUES
('Celebration Day', 'Black Dog'),
('Celebration Day', 'Dazed and Confused '),
('Celebration Day', 'For Your Life'),
('Celebration Day', 'Good Times Bad Times'),
('Celebration Day', 'In My Time Of Dying'),
('Celebration Day', 'Kashmir'),
('Celebration Day', 'Misty Mountain Hop'),
('Celebration Day', 'No Qaurter'),
('Celebration Day', 'Nobody\'s Fault but Mine'),
('Celebration Day', 'Ramble On'),
('Celebration Day', 'Rock and Roll'),
('Celebration Day', 'Since I\'ve Been Loving You'),
('Celebration Day', 'Stairway to Heaven'),
('Celebration Day', 'The Song Remains the Same'),
('Celebration Day', 'Trampled Under Foot'),
('Celebration Day', 'Whole Lotta Love'),
('Live at Wembley', 'A Kind of Magic'),
('Live at Wembley', 'Another One Bites the Dust'),
('Live at Wembley', 'Bohemian Rhapsody'),
('Live at Wembley', 'Brighton Rock'),
('Live at Wembley', 'Crazy Little Thing Called Love'),
('Live at Wembley', 'Hammer to Fall'),
('Live at Wembley', 'I Want to Break Free'),
('Live at Wembley', 'In the Lap of the Gods'),
('Live at Wembley', 'Is This the World We Created?'),
('Live at Wembley', 'Love of My life '),
('Live at Wembley', 'Now I\'m Here'),
('Live at Wembley', 'One Vision'),
('Live at Wembley', 'Radio Ga Ga'),
('Live at Wembley', 'Tear It Up'),
('Live at Wembley', 'Tie Your Mother Down'),
('Live at Wembley', 'Tutti Frutti'),
('Live at Wembley', 'Under Pressure'),
('Live at Wembley', 'We Are the Champions'),
('Live at Wembley', 'We Will Rock You'),
('Live at Wembley', 'Who Wants to Live Forever'),
('Rooftop Concert', 'Dig a Pony'),
('Rooftop Concert', 'Don\'t Let Me Down'),
('Rooftop Concert', 'Don\'t Let Me Down (part 2)'),
('Rooftop Concert', 'Get Back'),
('Rooftop Concert', 'Get Back (part 2)'),
('Rooftop Concert', 'God Save the Queen'),
('Rooftop Concert', 'I\'ve Got a Feeling'),
('Rooftop Concert', 'I\'ve Got a Feeling (part 2)'),
('Rooftop Concert', 'One After 909'),
('The Concert in Central Park', '50 Ways to Leave Your Lover'),
('The Concert in Central Park', 'A Heart in New York'),
('The Concert in Central Park', 'America'),
('The Concert in Central Park', 'April Come She WIll'),
('The Concert in Central Park', 'Bridge over Troubled Water'),
('The Concert in Central Park', 'Homeward Bound'),
('The Concert in Central Park', 'Kodachrome/Maybellene'),
('The Concert in Central Park', 'Late in Evening'),
('The Concert in Central Park', 'Me and Julio Down by the Shoolyard'),
('The Concert in Central Park', 'Mrs. Robinson'),
('The Concert in Central Park', 'Old Friends'),
('The Concert in Central Park', 'Scarborough Fair'),
('The Concert in Central Park', 'Slip Slidin\' Away'),
('The Concert in Central Park', 'Still Crazy After All These Years'),
('The Concert in Central Park', 'The 59th Street Bridge Song'),
('The Concert in Central Park', 'The Boxer'),
('The Concert in Central Park', 'The Sound of Silence'),
('The Concert in Central Park', 'Wake Up Little Susie');

-- --------------------------------------------------------

--
-- Struttura della tabella `strumenti`
--

CREATE TABLE `strumenti` (
  `Nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `strumenti`
--

INSERT INTO `strumenti` (`Nome`) VALUES
('Basso'),
('Batteria'),
('Chitarra Ritmica'),
('Chitarra solista'),
('Piano'),
('Tastiera'),
('Voce');

-- --------------------------------------------------------

--
-- Struttura della tabella `suona`
--

CREATE TABLE `suona` (
  `Nome Musicista` varchar(15) NOT NULL,
  `Cognome Musicista` varchar(20) NOT NULL,
  `Strumento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `suona`
--

INSERT INTO `suona` (`Nome Musicista`, `Cognome Musicista`, `Strumento`) VALUES
('Art', 'Garfunkel', 'Voce'),
('Brian', 'May', 'Chitarra solista'),
('Charlie', 'Watts', 'Batteria'),
('David', 'Gilmour', 'Chitarra solista'),
('David', 'Gilmour', 'Voce'),
('Freddie', 'Mercury', 'Voce'),
('George ', 'Harrison', 'Chitarra solista'),
('Jimmy', 'Page', 'Chitarra solista'),
('John', 'Bonham', 'Batteria'),
('John', 'Deacon', 'Basso'),
('John', 'Lennon', 'Chitarra Ritmica'),
('John', 'Lennon', 'Voce'),
('John Paul', 'Jones', 'Basso'),
('Keitch', 'RIchards', 'Chitarra solista'),
('Mick', 'Jagger', 'Voce'),
('Nick', 'Mason', 'Batteria'),
('Paul', 'McCartney', 'Basso'),
('Paul', 'McCartney', 'Piano'),
('Paul', 'McCartney', 'Voce'),
('Paul', 'Simon', 'Chitarra Ritmica'),
('Paul', 'Simon', 'Voce'),
('Richard', 'Wright', 'Tastiera'),
('Ringo', 'Starr', 'Batteria'),
('Robert', 'Plant', 'Voce'),
('Roger ', 'Taylor', 'Batteria'),
('Roger ', 'Waters', 'Basso'),
('Roger ', 'Waters', 'Chitarra solista'),
('Ronnie', 'Wood', 'Chitarra Ritmica'),
('Syd', 'Barret', 'Chitarra Ritmica'),
('Syd', 'Barret', 'Voce');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`Nome`);

--
-- Indici per le tabelle `brani`
--
ALTER TABLE `brani`
  ADD PRIMARY KEY (`Nome`);

--
-- Indici per le tabelle `concerti`
--
ALTER TABLE `concerti`
  ADD PRIMARY KEY (`Titolo`),
  ADD KEY `city_constraint` (`Città`);

--
-- Indici per le tabelle `esecuzioni`
--
ALTER TABLE `esecuzioni`
  ADD PRIMARY KEY (`Brano`,`Band`),
  ADD KEY `esecuzioni_fk2` (`Band`);

--
-- Indici per le tabelle `luoghi`
--
ALTER TABLE `luoghi`
  ADD PRIMARY KEY (`Città`);

--
-- Indici per le tabelle `musicisti`
--
ALTER TABLE `musicisti`
  ADD PRIMARY KEY (`Nome`,`Cognome`),
  ADD KEY `musicisti_fk` (`Band`);

--
-- Indici per le tabelle `scalette`
--
ALTER TABLE `scalette`
  ADD PRIMARY KEY (`Concerto`,`Brano`),
  ADD KEY `song` (`Brano`);

--
-- Indici per le tabelle `strumenti`
--
ALTER TABLE `strumenti`
  ADD PRIMARY KEY (`Nome`);

--
-- Indici per le tabelle `suona`
--
ALTER TABLE `suona`
  ADD PRIMARY KEY (`Nome Musicista`,`Cognome Musicista`,`Strumento`),
  ADD KEY `fk_foreign_key_strum` (`Strumento`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `concerti`
--
ALTER TABLE `concerti`
  ADD CONSTRAINT `city_constraint` FOREIGN KEY (`Città`) REFERENCES `luoghi` (`Città`);

--
-- Limiti per la tabella `esecuzioni`
--
ALTER TABLE `esecuzioni`
  ADD CONSTRAINT `esecuzioni_fk1` FOREIGN KEY (`Brano`) REFERENCES `brani` (`Nome`),
  ADD CONSTRAINT `esecuzioni_fk2` FOREIGN KEY (`Band`) REFERENCES `band` (`Nome`);

--
-- Limiti per la tabella `musicisti`
--
ALTER TABLE `musicisti`
  ADD CONSTRAINT `musicisti_fk` FOREIGN KEY (`Band`) REFERENCES `band` (`Nome`);

--
-- Limiti per la tabella `scalette`
--
ALTER TABLE `scalette`
  ADD CONSTRAINT `song` FOREIGN KEY (`Brano`) REFERENCES `brani` (`Nome`),
  ADD CONSTRAINT `title` FOREIGN KEY (`Concerto`) REFERENCES `concerti` (`Titolo`);

--
-- Limiti per la tabella `suona`
--
ALTER TABLE `suona`
  ADD CONSTRAINT `fk_foreign_key_name` FOREIGN KEY (`Nome Musicista`,`Cognome Musicista`) REFERENCES `musicisti` (`Nome`, `Cognome`),
  ADD CONSTRAINT `fk_foreign_key_strum` FOREIGN KEY (`Strumento`) REFERENCES `strumenti` (`Nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
