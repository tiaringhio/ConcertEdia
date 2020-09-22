-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 22, 2020 alle 19:09
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
-- Database: `concertedia`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `band`
--

CREATE TABLE `band` (
  `Nome` varchar(30) NOT NULL,
  `Genere` varchar(25) NOT NULL,
  `Foto` varchar(50) NOT NULL,
  `Descrizione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `band`
--

INSERT INTO `band` (`Nome`, `Genere`, `Foto`, `Descrizione`) VALUES
('Eric Clapton', 'Rock', 'ericclapton.jpg', 'Eric Patrick Clapton è un chitarrista e cantautore britannico.\r\n\r\nSoprannominato «Slowhand», Clapton è annoverato fra i chitarristi blues e rock più famosi e influenti. Nell\'arco della sua lunga carriera ha collaborato con altri artisti acclamati e ha militato in numerosi gruppi (The Yardbirds, John Mayall & the Bluesbreakers, Cream, Blind Faith, Delaney & Bonnie, Derek and the Dominos) prima di affermarsi come solista, sperimentando nel corso degli anni svariati stili musicali, dal blues di matrice tradizionale al rock psichedelico, dal reggae al pop rock.\r\n\r\nFigura al secondo posto della classifica dei cento più grandi chitarristi di tutti i tempi stilata dalla rivista Rolling Stone e al quarto posto della classifica dei migliori cinquanta chitarristi di tutti i tempi secondo Gibson.'),
('Jefferson Airplanes', 'Rock', 'JeffersonAirplanes.jpg', 'I Jefferson Airplane sono stati un gruppo rock statunitense di San Francisco formatosi nel 1965, pionieri della controcultura statunitense \"bandiera\" della fiorente scena musicale psichedelica che si sviluppò a San Francisco verso la metà degli anni sessanta.\r\n\r\nTra i gruppi locali di quel periodo, i Jefferson Airplane furono i primi a esibirsi in uno dei \"concerti dance\" organizzati dal grafico Alton Kelley alla Longshoreman\'s Hall nell\'ottobre 1965; furono i primi inoltre a firmare un contratto discografico con un\'importante etichetta, i primi ad apparire in una trasmissione televisiva in onda su scala nazionale, i primi a raggiungere record di vendite e i primi ad andare in tour nella costa atlantica degli Stati Uniti e in Europa.\r\n\r\nDurante i tardi anni sessanta i concerti dei Jefferson Airplane furono tra quelli più seguiti al mondo, i loro album ebbero vendite considerevoli, entrarono due volte nella Top 10 Hits per i singoli e in altre occasioni nella Top 20 per gli album, e il loro LP Surrealistic Pillow del 1967 è considerato uno degli album chiave del movimento psichedelico e della cosiddetta \"Summer of Love\". Suonarono ai tre principali festival rock di fine anni sessanta – Monterey (1967), Woodstock (1969) e Altamont (1969) – oltre ad essere presenti ai primi due festival dell\'Isola di Wight.\r\n\r\nI Jefferson Airplane furono caratterizzati da diversi cambiamenti e defezioni nel corso degli anni nella formazione del gruppo. Dopo lo scioglimento si formarono i Jefferson Starship, divenuti successivamente solo \"Starship\", prima di diventare i \"Jefferson Starship - The Next Generation\" nel 1991. Ma i Jefferson Airplane, così come si erano configurati e avevano raggiunto il successo, se si esclude una momentanea riunione nel 1989, cessarono la loro attività nel 1973. Sono stati inseriti nella Rock and Roll Hall of Fame nel 1996'),
('Jimi Hendrix Experience', 'Rock', 'Jimihendrixexp.jpg', 'Il gruppo si formò a Londra nel 1966, quando il bassista degli Animals, Chas Chandler, notò Hendrix negli Stati Uniti e lo convinse a seguirlo nella nazione britannica affiancandogli Redding e Mitchell. Il gruppo pubblicò nel dicembre 1966 il primo 45 Giri Hey Joe - Stone Free che ebbe un notevole successo. La consacrazione del suo talento fu raggiunta subito con il primo album intitolato \"Are You Experienced\", ancora oggi considerato una pietra miliare del rock.\r\n\r\nCosì Hendrix decise di tornare ad esibirsi in America dopo aver raccolto i frutti del primo Lp: la prima apparizione ufficiale dell\'Experience fu nell\'occasione del grande evento del festival musicale di Monterey nel giugno del \'67. Jimi Hendrix, conosciuto e \"temuto\" dai grandi chitarristi dell\'epoca, si contese dietro le quinte l\'entrata in scena con gli Who; si narra di una lite furibonda che sicuramente si risolse con l\'entrata di questi ultimi; la loro apparizione fu fiammeggiante ma nessuno avrebbe potuto immaginare che subito dopo, un esordiente Jimi Hendrix, dopo aver sbalordito tutti con la sua strabiliante qualità di chitarrista, avrebbe realmente sacrificato la sua chitarra in un mistico incendio che mitizzò la sua personalità al suo primo \"battesimo\".\r\n\r\nLe successive produzioni discografiche consolidarono la fama di innovatore del rock che Hendrix ormai aveva ottenuto: vengono così alla luce Axis: Bold as Love e Electric Ladyland, due capolavori che segnano definitivamente l\'ascesa esponenziale del \"talento di Seattle\".\r\n\r\nAssemblata per esigenze d\'urgenza creativa di Jimi Hendrix, l\'Experience non lo soddisfece mai artisticamente, poiché si sentiva poco ascoltato e non sufficientemente seguito dai pur dotati Redding e Mitchell. La ricerca delle sonorità più innovative e la sperimentazione musicale che Hendrix tentò di introdurre non furono apprezzate totalmente, specialmente dal bassista Noel Redding. La sala prove pullulava di musicisti assoldati da Hendrix affinché contribuissero alla massima resa sonora di ogni singolo pezzo; tale affollamento di componenti musicali e l\'esasperata ed estenuante ricerca del sound giusto portarono pertanto all\'abbandono di Noel Redding della \"Jimi Hendrix Experience\" che, dopo particolarissimi e suggestivi esperimenti assemblativi (come il gruppo voluto da Hendrix nel grande concerto del festival di Woodstock), fu definitivamente sciolta.'),
('Led Zeppelin', 'Rock', 'led-zeppelin.jpg', 'I Led Zeppelin sono stati un gruppo musicale britannico formato nel 1968, considerato tra i grandi innovatori del rock e tra i principali pionieri dell\'hard rock.\r\n\r\nLa loro musica, le cui radici affondano in generi diversi tra cui blues, rockabilly e folk, ha costituito una formula completamente inedita per l\'epoca, finendo con l\'influenzare in qualche modo tutti i gruppi rock del loro tempo e del futuro. Il gruppo, scioltosi nel 1980 a seguito della morte del batterista, fu composto per l\'intero periodo della sua attività da Robert Plant (voce, armonica), Jimmy Page (chitarre), John Paul Jones (basso, tastiere) e John Bonham (batteria, percussioni). In seguito alla morte di Bonham, Page e Plant hanno proseguito la propria attività musicale come solisti, incidendo insieme gli album No Quarter: Jimmy Page and Robert Plant Unledded e Walking into Clarksdale e ritrovandosi occasionalmente per esibirsi dal vivo nel corso di eventi commemorativi o celebrativi. I Led Zeppelin sono tra i gruppi di maggior successo commerciale nella storia della musica moderna: dal 1968 ad oggi il gruppo ha venduto oltre 300 milioni di dischi.Nel 2007, a seguito dell\'incredibile richiesta di biglietti per la loro esibizione all\'The O2 Arena di Londra (oltre 20 milioni di richieste in circa 24 ore), il gruppo è entrato nel Guinness dei primati per la \"maggior richiesta di biglietti per una singola esibizione dal vivo\".\r\n\r\nIl 12 gennaio 1995 i Led Zeppelin sono stati introdotti nella Rock and Roll Hall of Fame. In una classifica stilata nel 2003 dalla rivista Rolling Stone, i Led Zeppelin risultano al 14º posto tra i 100 migliori artisti di tutti i tempi: la stessa Rolling Stone ha avuto modo di definire a più riprese i Led Zeppelin come \"Il gruppo più heavy di tutti i tempi, indiscutibilmente uno dei gruppi più duraturi della storia del rock\" e \"il gruppo più importante degli anni settanta\". Nella stessa misura, la Rock and Roll Hall of Fame ha affermato che l\'influenza che il gruppo ha esercitato negli anni settanta è «rilevante come quella che i Beatles hanno avuto nel decennio precedente» e l\'emittente VH1 ha definito i Led Zeppelin come «il più importante gruppo hard rock della storia»'),
('Pink Floyd', 'Rock', 'Pink_Floyd.jpg', 'I Pink Floyd sono stati un gruppo musicale rock britannico formatosi nella seconda metà degli anni sessanta; nel corso di una lunga carriera, è riuscito a riscrivere le tendenze musicali della propria epoca, diventando uno dei gruppi più importanti della storia.\r\n\r\nDopo essersi fatto notare grazie a lavori di stampo psichedelico, raggiunge la maturità con Atom Heart Mother e Meddle, e si afferma a livello mondiale con The Dark Side of the Moon e i successivi album, Wish You Were Here, Animals e The Wall, che consegnano i quattro alla storia del rock. La formazione non subisce sostanziali cambiamenti fino al 1985, escludendo una parentesi di alcuni anni in cui Wright figura solo come turnista. Nel 1985 Waters abbandona il gruppo e i membri rimanenti, dopo aver vinto la breve battaglia legale per stabilire a chi spettasse continuare a usare il nome \"Pink Floyd\", pubblicano successivamente altri due album in studio: A Momentary Lapse of Reason e The Division Bell. La formazione cessa la propria attività nel 1995, sciogliendosi definitivamente nel 2006, quando Gilmour nega ufficialmente la possibilità di una riunione. Lo stesso anno muore Syd Barrett e, nel 2008, anche Richard Wright. Nel 2014 è stato pubblicato un quindicesimo album in studio, The Endless River, che ha raccolto materiale registrato nel 1993.\r\n\r\nI Pink Floyd hanno influenzato considerevolmente la musica successiva, sia gruppi progressive degli anni settanta che musicisti dei decenni successivi come Nine Inch Nails, Dream Theater e Porcupine Tree.\r\n\r\nNel 2008 si è stimato che abbiano venduto circa 250 milioni di dischi in tutto il mondo, di cui 74,5 milioni negli Stati Uniti d\'America.'),
('Queen', 'Rock', 'queen.jpg', 'I Queen sono un gruppo musicale rock britannico, formatosi a Londra nel 1970 dall\'incontro del cantante e pianista Freddie Mercury con il chitarrista Brian May e con il batterista Roger Taylor; la formazione storica si è poi completata nel 1971 con l\'ingresso del bassista John Deacon.\r\n\r\nLa band, conosciuta come una tra le più importanti della scena musicale internazionale, ha venduto circa 300 milioni di dischi nel mondo.\r\n\r\nIl gruppo ha riscosso nel corso degli anni un grandissimo successo di pubblico e ha avuto una forte influenza sulle generazioni e sui musicisti successivi. Nel 2001 la band è stata inclusa nella Rock and Roll Hall of Fame di Cleveland e, nel 2004, nella UK Music Hall of Fame. Inoltre, i quattro membri della band sono stati ammessi nella Songwriters Hall of Fame. I Queen, che attinsero principalmente al progressive, al glam rock e, soprattutto nei primi anni, all\'hard rock, furono influenzati da generi musicali molto diversi, come heavy metal, gospel, blues rock, musica elettronica, funk e rock psichedelico.\r\n\r\nCaratteristica del gruppo erano i loro concerti (707 in 26 nazioni dal 1971 al 1986) che, animati da Mercury, considerato uno dei più carismatici frontman di sempre, si trasformavano in spettacoli teatrali; la loro esibizione al Live Aid è stata votata da un vasto numero di critici come la migliore dell\'evento. '),
('Rolling Stones', 'Rock', 'TheRollingStones.jpg', 'The Rolling Stones è un gruppo musicale rock britannico composto da Mick Jagger (voce, armonica, chitarra, piano), Keith Richards (chitarre, voce, basso, piano), Ronnie Wood (chitarre, cori, pedal steel guitar, basso, synth) e Charlie Watts (batteria, percussioni). È una delle band più importanti e tra le maggiori espressioni di quella miscela tra rock e blues che è l\'evoluzione del rock & roll anni cinquanta, da loro rivisitato in chiave più dura con ritmi lascivi, canto aggressivo e continui riferimenti ai disordini socio-politici, sesso e droghe.\r\n\r\nCon una ben conosciuta e rodata strategia promozionale gli Stones furono da subito contrapposti ai più rassicuranti e già celebri Beatles sfruttando la loro immagine trasgressiva da \'bad boys\' che costituiva un perfetto modello alternativo a uso e consumo della stampa musicale. Tale contrapposizione venne in realtà creata ad arte dai manager degli stessi Rolling Stones i quali in realtà, come dichiarato più volte dallo stesso Jagger, avevano per i quattro di Liverpool ormai lanciatissimi una grande ammirazione tanto da farne un vero e proprio modello di riferimento. I membri delle due band ebbero sempre un ottimo rapporto di stima e amicizia, non a caso il primo successo dei Rolling Stones, I Wanna Be Your Man, venne scritto da Lennon-McCartney, ma il presunto dualismo costituiva e costituisce ancora oggi un ottimo pretesto di discussione.\r\n\r\nI Rolling Stones costituiscono una pietra miliare nell\'evoluzione della musica rock del XX secolo, avendo dato voce al malcontento e di conseguenza alla protesta di intere generazioni, incarnando così il travagliato spirito dei grandi bluesman del passato e scegliendo il titolo di una canzone di uno di questi (Muddy Waters) come nome del loro gruppo.\r\n\r\nI Rolling Stones sono stati ammessi nella Rock and Roll Hall of Fame nel 1989 e nella UK Music Hall of Fame nel 2004. La rivista Rolling Stone li colloca al quarto posto nella classifica dei più grandi artisti di tutti i tempi. Nella loro carriera hanno venduto più di 250 milioni di copie. Hanno pubblicato trentacinque album in studio, diciotto album dal vivo e numerose raccolte'),
('Santana', 'Latin Rock', 'santana.jpg', 'Carlos Santana è un chitarrista e compositore messicano naturalizzato statunitense.\r\n\r\nHa cominciato a riscuotere consensi tra gli anni settanta e ottanta, con il suo gruppo, chiamato semplicemente Santana. Già allora mescolava vari generi, quali salsa, rock classico, blues e fusion. Allora come oggi Santana usava in modo estensivo i suoi assoli di chitarra e si avvaleva anche di strumenti più tradizionali del suo paese. In seguito ha continuato a sperimentare questa formula, tra alterne fortune.\r\n\r\nNel corso degli anni novanta Santana rischiò il declino, scongiurato nel 1999 dall\'album Supernatural. Grazie a questo lavoro, il più importante successo della sua carriera, ha fatto conoscere la sua filosofia musicale alle nuove generazioni.\r\n\r\nHa venduto più di 80 milioni di dischi ed è anche considerato tra i migliori chitarristi rock esistenti. La rivista Rolling Stone lo ha inserito nella Lista dei 100 migliori chitarristi secondo Rolling Stone al 20º posto.'),
('Simon & Garfunkel', 'Folk', 'simon&garfunkel.jpg', 'Simon & Garfunkel sono stati un popolare duo folk statunitense, costituito da Paul Simon (Newark, New Jersey, 13 ottobre 1941) e Art Garfunkel (Forest Hills, New York, 5 novembre 1941). Dopo il loro primo grande successo (The Sound of Silence, 1964) divennero fra i più famosi artisti musicali degli anni sessanta. Alcune delle loro canzoni (The Sound of Silence, The Boxer, Mrs. Robinson, Bridge over Troubled Water) sono veri e propri classici della musica leggera. Il duo ha ricevuto innumerevoli Grammy Awards ed è citato nella Rock and Roll Hall of Fame.'),
('The Beatles', 'Pop', 'Beatles.jpg', 'The Beatles è stato un gruppo musicale britannico,[8] fondato a Liverpool nel 1960 e attivo fino al 1970.\r\n\r\nRitenuti un fenomeno di comunicazione di massa di proporzioni mondiali, i Beatles hanno segnato un\'epoca nella musica, nel costume, nella moda e nella pop art. A distanza di vari decenni dal loro scioglimento ufficiale – e dopo la morte di due dei quattro componenti – i Beatles contano ancora un enorme seguito e numerosi sono i loro fan club esistenti in ogni parte del mondo.\r\n\r\nStando alle stime dichiarate hanno venduto a livello mondiale un totale di oltre un miliardo di copie[13] fra album, singoli e musicassette, risultando fra gli artisti di maggior impatto e successo e, negli Stati Uniti, quelli con il maggior numero di vendite.[14] Sono inoltre al primo posto della lista dei 100 migliori artisti secondo Rolling Stone.\r\n\r\nL\'aura che circonda lo sviluppo del loro successo mediatico e che ha favorito la nascita della cosiddetta Beatlemania e lo straordinario esito artistico raggiunto come musicisti rock sono inoltre oggetto di studio di università, psicologi e addetti del settore.');

-- --------------------------------------------------------

--
-- Struttura della tabella `brani`
--

CREATE TABLE `brani` (
  `Nome` varchar(100) NOT NULL,
  `Genere` varchar(20) NOT NULL,
  `Durata` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `brani`
--

INSERT INTO `brani` (`Nome`, `Genere`, `Durata`) VALUES
('(I Can’t Get No) Satisfaction', 'Rock', '00:03:44'),
('3/5 Of a Mile in 10 Seconds', 'Rock', '00:05:14'),
('50 Ways to Leave Your Lover', 'Folk', '00:04:23'),
('A Heart in New York', 'Folk', '00:02:49'),
('A Kind of Magic', 'Vocal ', '00:08:33'),
('A Saucerful of Secrets', 'Rock', '00:11:57'),
('Alberta', 'Traditional', '00:03:42'),
('America', 'Folk', '00:04:42'),
('Another One Bites the Dust', 'Rock', '00:05:54'),
('April Come She WIll', 'Folk', '00:02:37'),
('Before You Accuse Me', 'Blues', '00:03:44'),
('Black Dog', 'Rock', '00:05:53'),
('Bohemian Rhapsody', 'Rock', '00:05:49'),
('Bridge over Troubled Water', 'Pop', '00:04:48'),
('Brighton Rock', 'Rock', '00:09:10'),
('Brown Sugar', 'Rock', '00:03:48'),
('Careful with That Axe, Eugene', 'Rock', '00:03:35'),
('Come Back Baby', 'Rock', '00:06:05'),
('Crazy Little Thing Called Love', 'Rock', '00:05:33'),
('Dazed and Confused ', 'Rock', '00:11:43'),
('Dig a Pony', 'Rock', '00:03:44'),
('Don\'t Let Me Down', 'Rock', '00:03:12'),
('Don\'t Let Me Down (part 2)', 'Rock', '00:03:19'),
('Echoes, part I', 'Rock', '00:23:31'),
('Echoes, part II', 'Rock', '00:23:31'),
('Eskimo Blue Day', 'Rock', '00:06:55'),
('Evil Ways', 'Rock', '00:04:01'),
('Fire', 'Rock', '00:03:42'),
('For Your Life', 'Rock', '00:06:42'),
('Foxy Lady', 'Rock', '00:05:07'),
('Fried Neckbones and Home Fries', 'Rock', '00:10:41'),
('Get Back', 'Rock', '00:03:05'),
('Get Back (part 2)', 'Rock', '00:03:01'),
('Get Off of My Cloud', 'Rock', '00:02:55'),
('God Save the Queen', 'Traditional', '00:00:32'),
('Good Times Bad Times', 'Rock', '00:03:12'),
('Hammer to Fall', 'Rock', '00:06:02'),
('Happy', 'Rock', '00:03:04'),
('Hear My Train A Comin\'', 'Blues', '00:09:49'),
('Hey Hey', 'Blues', '00:03:16'),
('Hey Joe', 'Blues', '00:05:53'),
('Homeward Bound', 'Folk', '00:04:22'),
('Honky Tonk Women', 'Rock', '00:03:02'),
('I Want to Break Free', 'Rock', '00:03:36'),
('I\'ve Got a Feeling', 'Rock', '00:03:30'),
('I\'ve Got a Feeling (part 2)', 'Rock', '00:03:33'),
('In My Time Of Dying', 'Rock', '00:11:08'),
('In the Lap of the Gods', 'Rock', '00:02:29'),
('Introduction (Live At woodstock)', 'Blues', '00:02:21'),
('Is This the World We Created?', 'Rock', '00:02:57'),
('It\'s Only Rock \'n\' Roll (But I Like It)', 'Rock', '00:05:07'),
('Izabella', 'Rock', '00:06:42'),
('Jam Back at the House', 'Blues', '00:07:46'),
('Jingo', 'Rock', '00:06:39'),
('Jumpin’ Jack Flash', 'Rock', '00:03:39'),
('Kashmir', 'Rock', '00:09:06'),
('Kodachrome/Maybellene', 'Folk', '00:05:51'),
('Late in Evening', 'Folk', '00:04:19'),
('Layla', 'Blues', '00:04:46'),
('Lonely Stranger', 'Blues', '00:05:27'),
('Love of My life ', 'Rock', '00:04:05'),
('Lover Man', 'Rock', '00:05:12'),
('Mademoiselle Nobs (Seamus)', 'Rock', '00:02:14'),
('Malted Milk', 'Blues', '00:03:36'),
('Me and Julio Down by the Shoolyard', 'Folk', '00:03:22'),
('Message to Love', 'Rock', '00:07:21'),
('Midnight Rambler', 'Rock', '00:06:52'),
('Miss You', 'Rock', '00:04:48'),
('Misty Mountain Hop', 'Rock', '00:05:08'),
('Mrs. Robinson', 'Pop', '00:03:52'),
('Night Time Is the Right Time', 'Rock', '00:02:52'),
('No Qaurter', 'Rock', '00:09:19'),
('Nobody\'s Fault but Mine', 'Rock', '00:06:43'),
('Now I\'m Here', 'Rock', '00:07:04'),
('Oh No, Not You Again', 'Rock', '00:03:46'),
('Old Friends', 'Pop', '00:02:57'),
('Old Love', 'Blues', '00:07:52'),
('One After 909', 'Rock', '00:02:46'),
('One of These Days', 'Rock', '00:05:57'),
('One Vision', 'Rock', '00:05:49'),
('Persuasion', 'Rock', '00:02:37'),
('Plastic Fantastic Lover', 'Rock', '00:04:35'),
('Purple Haze', 'Rock', '00:04:24'),
('Radio Ga Ga', 'Rock', '00:06:02'),
('Rain Fall Down', 'Rock', '00:04:53'),
('Ramble On', 'Rock', '00:05:44'),
('Red House', 'Blues', '00:05:24'),
('Rock and Roll', 'Rock', '00:04:33'),
('Rollin\' and Tumblin\'', 'Blues', '00:04:12'),
('Rough Justice', 'Rock', '00:03:10'),
('Running on Faith', 'Blues', '00:06:30'),
('San Francisco Bay', 'Blues', '00:03:23'),
('Savor', 'Rock', '00:09:39'),
('Scarborough Fair', 'Folk', '00:03:52'),
('Set the Controls for the Heart of the Sun', 'Rock', '00:05:27'),
('Signe', 'Blues', '00:03:14'),
('Since I\'ve Been Loving You', 'Rock', '00:07:51'),
('Slip Slidin\' Away', 'Folk', '00:04:54'),
('Somebody to Love', 'Rock', '00:04:32'),
('Soul Sacrifice', 'Rock', '00:06:17'),
('Spanish Magic Castle', 'Rock', '00:07:06'),
('Stairway to Heaven', 'Rock', '00:08:43'),
('Star Spangled Banner ', 'Guitar Solo', '00:03:43'),
('Start Me Up', 'Rock', '00:03:33'),
('Still Crazy After All These Years', 'Pop', '00:04:04'),
('Sympathy for the Devil', 'Rock', '00:06:18'),
('Tear It Up', 'Rock', '00:02:21'),
('Tears in Heaven ', 'Ballad', '00:04:36'),
('The 59th Street Bridge Song', 'Folk', '00:02:01'),
('The Ballad of You & Me & Pooneil', 'Rock', '00:15:30'),
('The Boxer', 'Pop', '00:06:02'),
('The House at Pooneil Corners', 'Rock', '00:09:17'),
('The Other Side of This Life', 'Rock', '00:08:18'),
('The Song Remains the Same', 'Rock', '00:05:46'),
('The Sound of Silence', 'Pop', '00:04:13'),
('This Place Is Empty', 'Rock', '00:03:16'),
('Tie Your Mother Down', 'Rock', '00:04:06'),
('Trampled Under Foot', 'Rock', '00:06:19'),
('Tumbling Dice', 'Rock', '00:03:46'),
('Tutti Frutti', 'Rock and Roll', '00:03:25'),
('Uncle Sam Blues', 'Rock', '00:06:12'),
('Under Pressure', 'Pop Rock', '00:03:49'),
('Villanova Junction', 'Rock', '00:04:28'),
('Volunteers', 'Rock', '00:02:03'),
('Voodoo Child (Slight Return)', 'Rock', '00:13:40'),
('Waiting', 'Rock', '00:04:08'),
('Wake Up Little Susie', 'Folk', '00:02:19'),
('Walkin\' Blues', 'Blues', '00:03:37'),
('We Are the Champions', 'Rock', '00:04:01'),
('We Will Rock You', 'Rock', '00:02:46'),
('White Rabbit', 'Rock', '00:02:27'),
('Who Wants to Live Forever', 'Rock', '00:04:07'),
('Whole Lotta Love', 'Rock', '00:07:26'),
('Wild Horses', 'Rock', '00:05:41'),
('Won\'t You Try / Saturday Afternoon', 'Rock', '00:05:07'),
('Wooden Ships', 'Rock', '00:21:26'),
('Woodstock Improvisation', 'Improvisation', '00:00:04'),
('You Can\'t Always Get What You Want', 'Rock', '00:04:29'),
('You Got Me Rocking', 'Rock', '00:03:36'),
('You Just Don\'t Care', 'Rock', '00:04:38');

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
('Celebration Day', 'Celebration Day è un film concerto del 2012 diretto da Dick Carruthers e incentrato sul concerto tenuto dai Led Zeppelin il 10 dicembre 2007 presso l\'O2 Arena di Londra. Il batterista John Bonham, morto nel 1980, venne sostituito dal figlio Jason. Ne venne tratto anche un album discografico omonimo.\r\n\r\nIl film è stato proiettato nelle sale di tutto il mondo per un solo giorno, il 17 ottobre 2012, come un evento unico. Visto il grande successo riscosso dall\'iniziativa, l\'evento è stato replicato il 29 ottobre 2012.\r\n\r\nNelle 250 sale, distribuite in 180 cinema italiani, dove è stato proiettato sono arrivati complessivamente 48 mila spettatori, risultando il film più visto della giornata.', 'Rock', 20000, 'https://www.youtube.com/watch?v=RqIn1HHORCE', 'Londra', '2012-10-17', 'celebration_day.jpg'),
('Eric Clapton Unplugged', 'Eric Clapton è considerato indiscutibilmente come uno dei migliori chitarristi di sempre oltre ad essere un musicista straordinario e compositore impeccabile. Il live che fece per la famosa rete televisiva di MTV diede una svolta epocale a quella che era una carriera già passata alla storia. Eric e la sua band si esibirono  ai Bray Film Studios di Windsor e il chitarrista venne immortalato in audiovisivo e registrato in un’album che ha venduto oltre 26 milioni di copie certificate al mondo.\r\nCome era stato richiesto dal programma era previsto l’uso esclusivo di strumenti acustici e non elettrificati, tranne qualche piccola eccezione per l’amplificazione. Niente di più accettabile per un musicista che ha fatto della chitarra la sua ragione di vita e che ha tanto da trasmettere a quei pochissimi, fortunati uomini che a pochi metri ascoltarono la ruggente, entusiasmante e straziante esibizione di Clapton.\r\n', 'Acustico', NULL, 'https://www.youtube.com/watch?v=sQ5idZHWVn4', 'Londra', '1992-08-25', 'Unplugged.jpg'),
('Festival di Woodstock', 'La Fiera della Musica e delle Arti di Woodstock, meglio conosciuto con il più semplice festival di Woodstock, fu una manifestazione che si svolse a Bethel, una piccola città rurale nello stato di New York, Stati Uniti d\'America, dal 15 al 18 agosto del 1969, all\'apice della diffusione della cultura hippie. Vi si riferisce spesso con l\'espressione 3 Days of Peace & Rock Music, \"tre giorni di pace e musica rock\". Furono stimati dai 400 ai 500.000 spettatori.\r\n\r\nIl nome ha origine dalla città di Woodstock, nella contea di Ulster, conosciuta per le sue attività artistiche (vi si organizzano festival d\'arte) e fu l\'ultima grande manifestazione del movimento che da allora si diffuse peraltro sempre più fuori dagli USA, dove era nato, pur senza la coesione e l\'originalità che avevano permesso negli anni sessanta eventi come il Monterey Pop festival, la Summer of Love a San Francisco e lo stesso festival di Woodstock.', 'Rock', 400000, 'https://www.youtube.com/watch?v=Ta54NMaLbxo', 'Woodstock', '1969-08-15', 'woodstock.jpg'),
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
  `Brano` varchar(100) NOT NULL,
  `Band` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `esecuzioni`
--

INSERT INTO `esecuzioni` (`Brano`, `Band`) VALUES
('(I Can’t Get No) Satisfaction', 'Rolling Stones'),
('3/5 Of a Mile in 10 Seconds', 'Jefferson Airplanes'),
('50 Ways to Leave Your Lover', 'Simon & Garfunkel'),
('A Heart in New York', 'Simon & Garfunkel'),
('A Kind of Magic', 'Queen'),
('A Saucerful of Secrets', 'Pink Floyd'),
('Alberta', 'Eric Clapton'),
('America', 'Simon & Garfunkel'),
('Another One Bites the Dust', 'Queen'),
('April Come She WIll', 'Simon & Garfunkel'),
('Before You Accuse Me', 'Eric Clapton'),
('Black Dog', 'Led Zeppelin'),
('Bohemian Rhapsody', 'Queen'),
('Bridge over Troubled Water', 'Simon & Garfunkel'),
('Brighton Rock', 'Queen'),
('Brown Sugar', 'Rolling Stones'),
('Careful with That Axe, Eugene', 'Pink Floyd'),
('Come Back Baby', 'Jefferson Airplanes'),
('Crazy Little Thing Called Love', 'Queen'),
('Dazed and Confused ', 'Led Zeppelin'),
('Dig a Pony', 'The Beatles'),
('Don\'t Let Me Down', 'The Beatles'),
('Don\'t Let Me Down (part 2)', 'The Beatles'),
('Echoes, part I', 'Pink Floyd'),
('Echoes, part II', 'Pink Floyd'),
('Eskimo Blue Day', 'Jefferson Airplanes'),
('Evil Ways', 'Santana'),
('Fire', 'Jimi Hendrix Experience'),
('For Your Life', 'Led Zeppelin'),
('Foxy Lady', 'Jimi Hendrix Experience'),
('Fried Neckbones and Home Fries', 'Santana'),
('Get Back', 'The Beatles'),
('Get Back (part 2)', 'The Beatles'),
('Get Off of My Cloud', 'Rolling Stones'),
('God Save the Queen', 'The Beatles'),
('Good Times Bad Times', 'Led Zeppelin'),
('Hammer to Fall', 'Queen'),
('Happy', 'Rolling Stones'),
('Hear My Train A Comin\'', 'Jimi Hendrix Experience'),
('Hey Hey', 'Eric Clapton'),
('Hey Joe', 'Jimi Hendrix Experience'),
('Homeward Bound', 'Simon & Garfunkel'),
('Honky Tonk Women', 'Rolling Stones'),
('I Want to Break Free', 'Queen'),
('I\'ve Got a Feeling', 'The Beatles'),
('I\'ve Got a Feeling (part 2)', 'The Beatles'),
('In My Time Of Dying', 'Led Zeppelin'),
('In the Lap of the Gods', 'Queen'),
('Introduction (Live At woodstock)', 'Jimi Hendrix Experience'),
('Is This the World We Created?', 'Queen'),
('It\'s Only Rock \'n\' Roll (But I Like It)', 'Rolling Stones'),
('Izabella', 'Jimi Hendrix Experience'),
('Jam Back at the House', 'Jimi Hendrix Experience'),
('Jingo', 'Santana'),
('Jumpin’ Jack Flash', 'Rolling Stones'),
('Kashmir', 'Led Zeppelin'),
('Kodachrome/Maybellene', 'Simon & Garfunkel'),
('Late in Evening', 'Simon & Garfunkel'),
('Layla', 'Eric Clapton'),
('Lonely Stranger', 'Eric Clapton'),
('Love of My life ', 'Queen'),
('Lover Man', 'Jimi Hendrix Experience'),
('Mademoiselle Nobs (Seamus)', 'Pink Floyd'),
('Malted Milk', 'Eric Clapton'),
('Me and Julio Down by the Shoolyard', 'Simon & Garfunkel'),
('Message to Love', 'Jimi Hendrix Experience'),
('Midnight Rambler', 'Rolling Stones'),
('Miss You', 'Rolling Stones'),
('Misty Mountain Hop', 'Led Zeppelin'),
('Mrs. Robinson', 'Simon & Garfunkel'),
('Night Time Is the Right Time', 'Rolling Stones'),
('No Qaurter', 'Led Zeppelin'),
('Nobody\'s Fault but Mine', 'Led Zeppelin'),
('Now I\'m Here', 'Queen'),
('Oh No, Not You Again', 'Rolling Stones'),
('Old Friends', 'Simon & Garfunkel'),
('Old Love', 'Eric Clapton'),
('One After 909', 'The Beatles'),
('One of These Days', 'Pink Floyd'),
('One Vision', 'Queen'),
('Persuasion', 'Santana'),
('Plastic Fantastic Lover', 'Jefferson Airplanes'),
('Purple Haze', 'Jimi Hendrix Experience'),
('Radio Ga Ga', 'Queen'),
('Rain Fall Down', 'Rolling Stones'),
('Ramble On', 'Led Zeppelin'),
('Red House', 'Jimi Hendrix Experience'),
('Rock and Roll', 'Led Zeppelin'),
('Rollin\' and Tumblin\'', 'Eric Clapton'),
('Rough Justice', 'Rolling Stones'),
('Running on Faith', 'Eric Clapton'),
('San Francisco Bay', 'Eric Clapton'),
('Savor', 'Santana'),
('Scarborough Fair', 'Simon & Garfunkel'),
('Set the Controls for the Heart of the Sun', 'Pink Floyd'),
('Signe', 'Eric Clapton'),
('Since I\'ve Been Loving You', 'Led Zeppelin'),
('Slip Slidin\' Away', 'Simon & Garfunkel'),
('Somebody to Love', 'Jefferson Airplanes'),
('Soul Sacrifice', 'Santana'),
('Spanish Magic Castle', 'Jimi Hendrix Experience'),
('Stairway to Heaven', 'Led Zeppelin'),
('Star Spangled Banner ', 'Jimi Hendrix Experience'),
('Start Me Up', 'Rolling Stones'),
('Still Crazy After All These Years', 'Simon & Garfunkel'),
('Sympathy for the Devil', 'Rolling Stones'),
('Tear It Up', 'Queen'),
('Tears in Heaven ', 'Eric Clapton'),
('The 59th Street Bridge Song', 'Simon & Garfunkel'),
('The Ballad of You & Me & Pooneil', 'Jefferson Airplanes'),
('The Boxer', 'Simon & Garfunkel'),
('The House at Pooneil Corners', 'Jefferson Airplanes'),
('The Other Side of This Life', 'Jefferson Airplanes'),
('The Song Remains the Same', 'Led Zeppelin'),
('The Sound of Silence', 'Simon & Garfunkel'),
('This Place Is Empty', 'Rolling Stones'),
('Tie Your Mother Down', 'Queen'),
('Trampled Under Foot', 'Led Zeppelin'),
('Tumbling Dice', 'Rolling Stones'),
('Tutti Frutti', 'Queen'),
('Uncle Sam Blues', 'Jefferson Airplanes'),
('Under Pressure', 'Queen'),
('Villanova Junction', 'Jimi Hendrix Experience'),
('Volunteers', 'Jefferson Airplanes'),
('Voodoo Child (Slight Return)', 'Jimi Hendrix Experience'),
('Waiting', 'Santana'),
('Wake Up Little Susie', 'Simon & Garfunkel'),
('Walkin\' Blues', 'Eric Clapton'),
('We Are the Champions', 'Queen'),
('We Will Rock You', 'Queen'),
('White Rabbit', 'Jefferson Airplanes'),
('Who Wants to Live Forever', 'Queen'),
('Whole Lotta Love', 'Led Zeppelin'),
('Wild Horses', 'Rolling Stones'),
('Won\'t You Try / Saturday Afternoon', 'Jefferson Airplanes'),
('Wooden Ships', 'Jefferson Airplanes'),
('Woodstock Improvisation', 'Jimi Hendrix Experience'),
('You Can\'t Always Get What You Want', 'Rolling Stones'),
('You Got Me Rocking', 'Rolling Stones'),
('You Just Don\'t Care', 'Santana');

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
('Newcastle', 'Inghilterra'),
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
  `Band` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `musicisti`
--

INSERT INTO `musicisti` (`Nome`, `Cognome`, `Nascita`, `Morte`, `Band`) VALUES
('Art', 'Garfunkel', '1941-11-05', NULL, 'Simon & Garfunkel'),
('Billy', 'Cox', '1941-10-18', NULL, 'Jimi Hendrix Experience'),
('Brian', 'May', '1947-07-19', NULL, 'Queen'),
('Carlos', 'Santana', '1947-07-20', NULL, 'Santana'),
('Charlie', 'Watts', '1941-06-02', NULL, 'Rolling Stones'),
('David', 'Gilmour', '1946-03-06', NULL, 'Pink Floyd'),
('Eric', 'Clapton', '1945-03-30', NULL, 'Eric Clapton'),
('Freddie', 'Mercury', '1946-09-05', '1991-11-24', 'Queen'),
('George ', 'Harrison', '1943-02-25', '2001-11-29', 'The Beatles'),
('Grace', 'Slick', '1939-10-30', NULL, 'Jefferson Airplanes'),
('Jack', 'Casady', '1944-04-13', NULL, 'Jefferson Airplanes'),
('Jimi', 'Hendrix', '1942-11-27', '1970-09-18', 'Jimi Hendrix Experience'),
('Jimmy', 'Page', '1944-01-09', NULL, 'Led Zeppelin'),
('John', 'Bonham', '1948-05-31', '1980-09-25', 'Led Zeppelin'),
('John', 'Deacon', '1951-08-19', NULL, 'Queen'),
('John', 'Lennon', '1940-10-09', '1980-12-08', 'The Beatles'),
('John Paul', 'Jones', '1946-01-03', NULL, 'Led Zeppelin'),
('Jorma', 'Kaukonen', '1940-12-23', NULL, 'Jefferson Airplanes'),
('Keitch', 'RIchards', '1943-12-18', NULL, 'Rolling Stones'),
('Marty', 'Balin', '1942-01-30', '2018-09-27', 'Jefferson Airplanes'),
('Mick', 'Jagger', '1943-07-26', NULL, 'Rolling Stones'),
('Mitch', 'Mitchell', '1947-07-09', '2008-11-12', 'Jimi Hendrix Experience'),
('Nick', 'Mason', '1944-01-27', NULL, 'Pink Floyd'),
('Noel', 'Redding', '1945-12-25', '2003-05-11', 'Jimi Hendrix Experience'),
('Paul', 'Kantner', '1941-03-17', '2016-01-26', 'Jefferson Airplanes'),
('Paul', 'McCartney', '1942-07-18', NULL, 'The Beatles'),
('Paul', 'Simon', '1941-10-13', NULL, 'Simon & Garfunkel'),
('Richard', 'Wright', '1943-07-28', '2008-09-15', 'Pink Floyd'),
('Ringo', 'Starr', '1940-07-07', NULL, 'The Beatles'),
('Robert', 'Plant', '1948-08-20', NULL, 'Led Zeppelin'),
('Roger ', 'Taylor', '1949-07-26', NULL, 'Queen'),
('Roger ', 'Waters', '1943-09-06', NULL, 'Pink Floyd'),
('Ronnie', 'Wood', '1947-06-01', NULL, 'Rolling Stones'),
('Spencer', 'Dryden', '1938-04-07', '2005-01-11', 'Jefferson Airplanes'),
('Syd', 'Barret', '1946-01-06', '2006-07-07', 'Pink Floyd');

-- --------------------------------------------------------

--
-- Struttura della tabella `scalette`
--

CREATE TABLE `scalette` (
  `Concerto` varchar(30) NOT NULL,
  `Brano` varchar(100) NOT NULL
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
('Eric Clapton Unplugged', 'Alberta'),
('Eric Clapton Unplugged', 'Before You Accuse Me'),
('Eric Clapton Unplugged', 'Hey Hey'),
('Eric Clapton Unplugged', 'Layla'),
('Eric Clapton Unplugged', 'Lonely Stranger'),
('Eric Clapton Unplugged', 'Malted Milk'),
('Eric Clapton Unplugged', 'Old Love'),
('Eric Clapton Unplugged', 'Rollin\' and Tumblin\''),
('Eric Clapton Unplugged', 'Running on Faith'),
('Eric Clapton Unplugged', 'San Francisco Bay'),
('Eric Clapton Unplugged', 'Signe'),
('Eric Clapton Unplugged', 'Tears in Heaven '),
('Eric Clapton Unplugged', 'Walkin\' Blues'),
('Festival di Woodstock', '3/5 Of a Mile in 10 Seconds'),
('Festival di Woodstock', 'Come Back Baby'),
('Festival di Woodstock', 'Eskimo Blue Day'),
('Festival di Woodstock', 'Evil Ways'),
('Festival di Woodstock', 'Fire'),
('Festival di Woodstock', 'Foxy Lady'),
('Festival di Woodstock', 'Fried Neckbones and Home Fries'),
('Festival di Woodstock', 'Hear My Train A Comin\''),
('Festival di Woodstock', 'Hey Joe'),
('Festival di Woodstock', 'Introduction (Live At woodstock)'),
('Festival di Woodstock', 'Izabella'),
('Festival di Woodstock', 'Jam Back at the House'),
('Festival di Woodstock', 'Jingo'),
('Festival di Woodstock', 'Lover Man'),
('Festival di Woodstock', 'Message to Love'),
('Festival di Woodstock', 'Persuasion'),
('Festival di Woodstock', 'Plastic Fantastic Lover'),
('Festival di Woodstock', 'Purple Haze'),
('Festival di Woodstock', 'Red House'),
('Festival di Woodstock', 'Savor'),
('Festival di Woodstock', 'Somebody to Love'),
('Festival di Woodstock', 'Soul Sacrifice'),
('Festival di Woodstock', 'Spanish Magic Castle'),
('Festival di Woodstock', 'Star Spangled Banner '),
('Festival di Woodstock', 'The Ballad of You & Me & Pooneil'),
('Festival di Woodstock', 'The House at Pooneil Corners'),
('Festival di Woodstock', 'The Other Side of This Life'),
('Festival di Woodstock', 'Uncle Sam Blues'),
('Festival di Woodstock', 'Villanova Junction'),
('Festival di Woodstock', 'Volunteers'),
('Festival di Woodstock', 'Voodoo Child (Slight Return)'),
('Festival di Woodstock', 'Waiting'),
('Festival di Woodstock', 'White Rabbit'),
('Festival di Woodstock', 'Won\'t You Try / Saturday Afternoon'),
('Festival di Woodstock', 'Wooden Ships'),
('Festival di Woodstock', 'Woodstock Improvisation'),
('Festival di Woodstock', 'You Just Don\'t Care'),
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
('Pink Floyd at Pompeii', 'A Saucerful of Secrets'),
('Pink Floyd at Pompeii', 'Careful with That Axe, Eugene'),
('Pink Floyd at Pompeii', 'Echoes, part I'),
('Pink Floyd at Pompeii', 'Echoes, part II'),
('Pink Floyd at Pompeii', 'Mademoiselle Nobs (Seamus)'),
('Pink Floyd at Pompeii', 'One of These Days'),
('Pink Floyd at Pompeii', 'Set the Controls for the Heart of the Sun'),
('Rolling Stones Live in Rio', '(I Can’t Get No) Satisfaction'),
('Rolling Stones Live in Rio', 'Brown Sugar'),
('Rolling Stones Live in Rio', 'Get Off of My Cloud'),
('Rolling Stones Live in Rio', 'Happy'),
('Rolling Stones Live in Rio', 'Honky Tonk Women'),
('Rolling Stones Live in Rio', 'It\'s Only Rock \'n\' Roll (But I Like It)'),
('Rolling Stones Live in Rio', 'Jumpin’ Jack Flash'),
('Rolling Stones Live in Rio', 'Midnight Rambler'),
('Rolling Stones Live in Rio', 'Miss You'),
('Rolling Stones Live in Rio', 'Night Time Is the Right Time'),
('Rolling Stones Live in Rio', 'Oh No, Not You Again'),
('Rolling Stones Live in Rio', 'Rain Fall Down'),
('Rolling Stones Live in Rio', 'Rough Justice'),
('Rolling Stones Live in Rio', 'Start Me Up'),
('Rolling Stones Live in Rio', 'Sympathy for the Devil'),
('Rolling Stones Live in Rio', 'This Place Is Empty'),
('Rolling Stones Live in Rio', 'Tumbling Dice'),
('Rolling Stones Live in Rio', 'Wild Horses'),
('Rolling Stones Live in Rio', 'You Can\'t Always Get What You Want'),
('Rolling Stones Live in Rio', 'You Got Me Rocking'),
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
  `Nome_Musicista` varchar(15) NOT NULL,
  `Cognome_Musicista` varchar(20) NOT NULL,
  `Strumento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `suona`
--

INSERT INTO `suona` (`Nome_Musicista`, `Cognome_Musicista`, `Strumento`) VALUES
('Art', 'Garfunkel', 'Voce'),
('Billy', 'Cox', 'Basso'),
('Brian', 'May', 'Chitarra solista'),
('Carlos', 'Santana', 'Chitarra solista'),
('Charlie', 'Watts', 'Batteria'),
('David', 'Gilmour', 'Chitarra solista'),
('David', 'Gilmour', 'Voce'),
('Eric', 'Clapton', 'Chitarra Ritmica'),
('Eric', 'Clapton', 'Chitarra solista'),
('Eric', 'Clapton', 'Voce'),
('Freddie', 'Mercury', 'Voce'),
('George ', 'Harrison', 'Chitarra solista'),
('Grace', 'Slick', 'Piano'),
('Grace', 'Slick', 'Voce'),
('Jack', 'Casady', 'Basso'),
('Jimi', 'Hendrix', 'Chitarra solista'),
('Jimi', 'Hendrix', 'Voce'),
('Jimmy', 'Page', 'Chitarra solista'),
('John', 'Bonham', 'Batteria'),
('John', 'Deacon', 'Basso'),
('John', 'Lennon', 'Chitarra Ritmica'),
('John', 'Lennon', 'Voce'),
('John Paul', 'Jones', 'Basso'),
('Jorma', 'Kaukonen', 'Chitarra solista'),
('Jorma', 'Kaukonen', 'Voce'),
('Keitch', 'RIchards', 'Chitarra solista'),
('Marty', 'Balin', 'Batteria'),
('Marty', 'Balin', 'Chitarra Ritmica'),
('Marty', 'Balin', 'Voce'),
('Mick', 'Jagger', 'Voce'),
('Mitch', 'Mitchell', 'Batteria'),
('Nick', 'Mason', 'Batteria'),
('Noel', 'Redding', 'Basso'),
('Paul', 'Kantner', 'Chitarra Ritmica'),
('Paul', 'Kantner', 'Voce'),
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
('Spencer', 'Drydan', 'Batteria'),
('Spencer', 'Dryden', 'Batteria'),
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
  ADD PRIMARY KEY (`Nome_Musicista`,`Cognome_Musicista`,`Strumento`),
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
  ADD CONSTRAINT `brani` FOREIGN KEY (`Brano`) REFERENCES `brani` (`Nome`),
  ADD CONSTRAINT `title` FOREIGN KEY (`Concerto`) REFERENCES `concerti` (`Titolo`);

--
-- Limiti per la tabella `suona`
--
ALTER TABLE `suona`
  ADD CONSTRAINT `fk_foreign_key_name` FOREIGN KEY (`Nome_Musicista`,`Cognome_Musicista`) REFERENCES `musicisti` (`Nome`, `Cognome`),
  ADD CONSTRAINT `fk_foreign_key_strum` FOREIGN KEY (`Strumento`) REFERENCES `strumenti` (`Nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
