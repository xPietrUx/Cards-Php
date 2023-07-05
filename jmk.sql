-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Lut 2023, 20:43
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `jmk`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `carontheway`
--

CREATE TABLE `carontheway` (
  `ID_CarOnTheWay` int(11) NOT NULL,
  `CarTitle` varchar(255) NOT NULL,
  `DescriptionSmaller` text NOT NULL,
  `DescriptionBigger` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `carontheway`
--

INSERT INTO `carontheway` (`ID_CarOnTheWay`, `CarTitle`, `DescriptionSmaller`, `DescriptionBigger`) VALUES
(2, 'Ford Fusion', '2019 • 73 000 km • Hybryda • Sedan', 'Witam,\r\nMam do sprzedania Forda Fusin hybryda z 2019 roku w idealnym stanie technicznym, przebieg 73000 km. Jest to najbogatsza wersja wyposażenia titanium z silnikiem 2,0 litra. Posiada między innymi: Duży wyświetlacz Sync 3 z nawigacją, piękne szare felgi 18 calowe, podgrzewane i fotochromatyczne lusterka boczne z kierunkowskazami oraz podświetleniem, fotochromatyczne lusterko wewnętrzne, system monitorowania martwego pola, asystent pasa ruchu, System CTM wykorzystuje tylne czujniki radarowe do wykrywania nadjeżdżających pojazdów podczas cofania, czujnik zmierzchu, czujnik deszczu, światła przeciwmgielne przednie (z doświetlaniem zakrętów), lampy przednie led, automatycznę włączanie i wyłączanie świateł drogowych(długich) w nocy. Aktywny tempomat, programowane siedzenie kierowcy, grzane i wentylowane skórzane fotele przednie i wiele innych dodatków. Jestem pierwszym właścicielem w Polsce, pojazd sprowadzony z USA bardzo lekko uszkodzony. Nie były uszkodzone chłodnice ani żaden element konstrukcyjny (wymieniona przednia maska i plastikowe wzmocnienie górne), nie była wystrzelona żadna poduszka powietrzna. Ford w środku jak nowy, w 100% przystosowany do przepisów europejskich: przerobione tylne światła, zamontowane światło przeciwmgielne tył, tarczka prędkościomierza w kilometrach, polskie menu ze sterowaniem głosowym, polskie menu w liczniku. Dwa komplety opon zima lato. Bardzo niskie spalanie poniżej 6L/100km.\r\nW razie pytań, proszę o kontakt telefoniczny.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `caronthewayphotos`
--

CREATE TABLE `caronthewayphotos` (
  `ID_CarOnTheWayImage` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `img_dir` varchar(255) NOT NULL,
  `img_dir_folder` varchar(255) NOT NULL,
  `ID_CarOnTheWayImageTo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `caronthewayphotos`
--

INSERT INTO `caronthewayphotos` (`ID_CarOnTheWayImage`, `img_name`, `img_dir`, `img_dir_folder`, `ID_CarOnTheWayImageTo`) VALUES
(2, 'Image', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094/image.png', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094', 2),
(3, 'Image2', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094/image2.png', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094', 2),
(4, 'Image3', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094/image3.png', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094', 2),
(5, 'Image4', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094/image4.png', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094', 2),
(6, 'Image5', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094/image5.png', 'web/Ford Fusion074ea65c23a1c8c48a25388fafe52094', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `carrental`
--

CREATE TABLE `carrental` (
  `ID_CarRental` int(11) NOT NULL,
  `CarTitle` varchar(255) NOT NULL,
  `DescriptionSmaller` text NOT NULL,
  `DescriptionBigger` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `carrental`
--

INSERT INTO `carrental` (`ID_CarRental`, `CarTitle`, `DescriptionSmaller`, `DescriptionBigger`) VALUES
(24, 'Audi A5 Coupé', '7,9–4,7 l/100km • 179–123 g/km • 35TFSI, S tronic (150KM)  • benzyna \r\n ', 'Sportowy charakter Audi A5 Coupé zachwyca – i to jeszcze zanim rozpocznie się podróż. Nowy język stylistyczny eleganckiego trzydrzwiowego coupé z szerokimi wlotami powietrza, osłoną chłodnicy Singleframe i reflektorami o dynamicznej grafice sprawia, że przód auta nabiera ostrości. Po bokach sportowy charakter jest podkreślony nowym kształtem progów i opcjonalnymi 20-calowymi aluminiowymi kołami osadzonymi w masywnych nadkolach. Szerokość tyłu jest zaakcentowana wkładką dyfuzora z trapezoidalnymi końcówkami rur wydechowych. Szerokie pole personalizacji Audi A5 Coupé zapewniają pakiety stylistyczne.\r\n\r\nPoziome linie we wnętrzu Audi A5 Coupé budują poczucie przestrzeni, a wysoka jakość materiałów i najnowsze systemy Infotainment dopełniają doświadczenie luksusu. Zwróconą lekko w stronę kierowcy tablicę rozdzielczą wieńczy duży wyświetlacz systemu MMI touch. Pakiet wielokolorowego, nastrojowego oświetlenia konturowego podkreśla elementy stylistyczne wnętrza. Dzięki ich zastosowaniu Audi A5 Coupé może zostać spersonalizowane na wiele sposobów.\r\n\r\nSystem Audi drive select pozwala cieszyć się podczas jazdy szerokim wachlarzem emocji. W dowolnym momencie można wybrać jeden z pięciu trybów i dostosować sposób prowadzenia do oczekiwań kierowcy oraz warunków na drodze. Obecność technologii mild hybrid (MHEV) oraz napędu quattro jeszcze bardziej podnosi pewność i wydajność podczas jazdy.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `carrentalphotos`
--

CREATE TABLE `carrentalphotos` (
  `ID_CarRentalImage` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `img_dir` varchar(255) NOT NULL,
  `img_dir_folder` varchar(255) NOT NULL,
  `ID_CarRentalImageTo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `carrentalphotos`
--

INSERT INTO `carrentalphotos` (`ID_CarRentalImage`, `img_name`, `img_dir`, `img_dir_folder`, `ID_CarRentalImageTo`) VALUES
(142, 'H4sIAAAAAAAAA', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d/H4sIAAAAAAAAA.png', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d', 24),
(143, 'H4sIAAAAAAAAAFvzloG1tIiBOTrayf', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d/H4sIAAAAAAAAAFvzloG1tIiBOTrayf.png', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d', 24),
(144, 'H4sIAAAAAAAAAFvzloG1tIiBOTrayf 7N8dxx0eGzh_', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d/H4sIAAAAAAAAAFvzloG1tIiBOTrayf-7N8dxx0eGzh_.png', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d', 24),
(145, 'H4sIAAAAAAAAAFvzloG1tIiBOTrayfmPvvJ', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d/H4sIAAAAAAAAAFvzloG1tIiBOTrayfmPvvJ.png', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d', 24),
(146, 'H4sIAAAAAAAAAFvzloG1tIiBOTrayfPpJSnOlyqTXCw88W3R', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d/H4sIAAAAAAAAAFvzloG1tIiBOTrayfPpJSnOlyqTXCw88W3R.png', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d', 24),
(147, 'H4sIAAAAAAAAAFvzloG1tIiBOTrayfuvpGh6 AlfO1tpZ8z5EzaJP3zWL7z', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d/H4sIAAAAAAAAAFvzloG1tIiBOTrayfuvpGh6-AlfO1tpZ8z5EzaJP3zWL7z.png', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d', 24),
(148, 'H4sIAAAAAAAAAFvzloG1tIiBOTrayfuvpGh6 M1zJgaGigIGBgZGoDhTtNOaz GzN2WzjmVgafv0U63v9bun9Lzs5f_u8R', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d/H4sIAAAAAAAAAFvzloG1tIiBOTrayfuvpGh6-m1zJgaGigIGBgZGoDhTtNOaz-gzN2WzjmVgafv0U63v9bun9Lzs5f_u8R.png', 'web/Audi A5 Coupé432af178e3aabf7f859e39900ebe6d2d', 24);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `carsales`
--

CREATE TABLE `carsales` (
  `ID_CarSales` int(11) NOT NULL,
  `CarTitle` varchar(255) NOT NULL,
  `DescriptionSmaller` text NOT NULL,
  `DescriptionBigger` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `carsales`
--

INSERT INTO `carsales` (`ID_CarSales`, `CarTitle`, `DescriptionSmaller`, `DescriptionBigger`) VALUES
(48, 'Cupra Ateca 2.0 TSI 4Drive DSG', '2018 • 79 000 km • Benzyna • SUV', 'SEAT Ateca Cupra 4Drive 2.0 TFSI 300KM 2019r przeb. 79 tyś :\r\nPDW \"Advanced Comfort & Security Pack 2\r\nPHE Klapa bagażnika z czujnikiem otwarcia (w tym dostęp bezkluczykowy z systemem SAFELOCK\r\nPNB BeatsAudio: głośniki premium, subwoofer, wzmacniacz 340 W i technologia surround\r\nPND DAB (Digital Audio Broadcasting)\r\nPakiet zimowy WW1: podgrzewane fotele przednie, spryskiwacz szyby przedniej, podgrzewane wycieraczki, podgrzewane lusterka zewnętrzne\r\n0P4 Końcówka rury wydechowej, dwuprzepływowa\r\n1N7 Dynamiczny kierowniczy\r\n1Y3 Blokada mechanizmu różnicowego ( XDS ) Dynamiczne wspomaganie trakcji\r\n2H4 Wybór profilu jazdy i sterowanie przepustnicą hydr.\r\n8Q3 Dynamiczne, automatyczne poziomowanie reflektorów (regulacja podczas jazdy)\r\n9S0 Wyświetlacz wielofunkcyjny/komputer pokładowy \"FPK\r\n9WX Mirror Link plus Wireless RSE \"App\r\nKA6 Z systemem kamer przednich i tylnych oraz dwiema kamerami bocznymi\r\nQ48 Opony 245/40 R19 94W (powłoka polimerowa)\r\nQQ9 Ambient Light Version 2\r\nVT2 Listwy wejściowe w wycięciach drzwiowych (podświetlane)\r\n4F2 Bezkluczykowy system centralnego zamka\r\n6K4 Front Assist, w tym City ANB dla ACC high\r\n79F System utrzymywania pasa ruchu, zapobiegania kolizjom, parkowania, martwego pola (BSD) i wspomagania nagłych wypadków\r\n8T8 Automatyczny system kontroli odległości (z funkcją \"follow to stop\") i ogranicznik prędkości\r\nQR9 Z rozpoznawaniem znaków drogowych\r\nQV3 Odbiór radia cyfrowego\r\n\r\n\r\nPojazd z dokumentacją wystawioną przez niezależnego rzeczoznawcę do wglądu potwierdza :\r\n\r\n1. 100% Oryginalny przebieg\r\n\r\n2. 100% Bezwypadkowy\r\n\r\n3. 100% Oryginalna powłoka lakiernicza na całym samochodzie\r\n\r\n4. Wpisy wyłącznie z Serwisu Audi wykonane w odpowiednim czasie\r\n\r\n5. Faktura VAT 23% zawiera wpis z informacją o przebiegu pojazdu\r\n\r\n6. Samochód dostępny w Polsce, możliwa sprzedaż od zaraz\r\nUWAGA! Absolutnie bezwypadkowy, każdy element karoserii posiada taką samą oryginalną grubość powłoki lakieru. Jeśli przy sprawdzeniu pojazdu w ASO lub u innego wybranego przez klienta specjalistę okaże się że jest cokolwiek niezgodne z opisem poniesiemy wszelkie koszty sprawdzenia pojazdu oraz zwracamy koszty przyjazdu do nas !\r\n\r\n7. KREDYT LUB LEASING od 103% / PAKIETY UBEZPIECZEŃ OC-NW-AC\r\nCena zawiera absolutnie wszystko, łącznie z akcyzą oraz innymi koniecznymi opłatami przy rejestracji pojazdu na ternie RP.\r\nCena na fakturze sprzedaży jest ostateczną ceną do zapłaty.\r\nKupujący ma absolutną gwarancję legalności pochodzenia i jasny status prawny sprowadzonego pojazdu.\r\nForma płatności określona przez kupującego – gotówka, kredyt lub preferencyjny leasing w procedurze uproszczonej. Odbiór pojazdu natychmiastowy\r\n\r\n8. Na miejscu udostępniamy profesjonalny czujnik pomiaru grubości lakieru\r\n9.Gwarantujemy prawdziwy i udokumentowany przebieg naszych samochodów ,a dla pewności i komfortu kupujących:\r\n-każdorazowo umieszczamy przebieg auta na fakturze VAT\r\n-w naszych ogłoszeniach zawsze jest dostępny numer VIN pojazdu\r\n-sprzedawane przez nas auta chętnie udostępniamy do sprawdzenia w ASO\r\n10. Na każdy Samochód dajemy Gwarancję !\r\n\r\nPierwszy właściciel\r\nBezwypadkowy\r\nSerwisowany w ASO\r\nKsiążka cyfrowa wszystkie przeglądy są wpisane w serwisie AUDI\r\nPrzebieg można sprawić w Salonie AUDI\r\nSamochód przygotowany do zarejestrowania\r\nOpłacone : Akcyza ,Tłumaczenia ,Przegląd ,OC\r\nWszystkie potrzebne dokumenty do rejestracji pojazdu\r\nCałkowity koszt rejestracji 256zł\r\nKupujący zwolniony z opłaty skarbowej 2%\r\nMożliwość sprawdzenia samochodu w dowolnie wybranym serwisie\r\nKomplet kluczyków 2szt\r\nPełna Faktura VAT23%\r\nNa auto zostanie wystawiona FV23% - możliwy leasing operacyjny oraz odliczenie podatku VAT\r\n\r\nCena brutto 164 990 PLN\r\n\r\nCena netto 134 138 PLN\r\n\r\nVAT 30 851 PLN\r\n\r\nGWARANCJA VIP Gwarant Service ochroni Cię przed nieprzewidzianymi wydatkami\r\nzwiązanymi z usuwaniem awarii w Twoim samochodzie.\r\n\r\nWojciech tel. 606 - wyświetl numer -\r\nBartosz tel. 503 - wyświetl numer -\r\n\r\nfacebook WB-CAR s.c\r\n\r\nTreść niniejszego ogłoszenia nie stanowi oferty handlowej w rozumieniu Kodeksu Cywilnego zgodnie z art.71 §1KC.\r\n'),
(49, 'Audi A1 1.0 TFSI Ultra Sportback S Tronic', '2017 • 56 150 km • Benzyna • Auta miejskie', '** Podana kwota 75 900 zł brutto przy skorzystaniu z finansowania kredytem lub leasingiem VW Bank **\r\n** Cena poza finansowaniem VW Bank 79 900 zł brutto **\r\n\r\nAudi A1 Sportback Ultra S-Line 1.0TFSI 95KM S-Tronic\r\n2017 rok produkcji\r\nAuto odkupione od pierwszego właściciela\r\nSalon Polska\r\nAuto 100 % bezwypadkowe\r\nGwarancja 12 miesięcy\r\nFaktura VAT 23%\r\n\r\nWyposażenie :\r\n\r\nSkórzana wielofunkcyjna kierownica\r\nKomputer pokładowy\r\n4 elektryczne szyby\r\nElektrycznie sterowane, podgrzewane oraz elektrycznie składane lusterka\r\nKlimatyzacja automatyczna\r\nPodgrzewane fotele przednie\r\nStart-Stop\r\nZestaw głośnomówiący Bluetooth\r\nCzujniki parkowania przód + tył\r\nCzujnik zmierzchu\r\nPrzyciemniane szyby tylne\r\nKey-Less\r\nPodłokietnik przedni\r\nReflektory przednie Full-Led\r\nKlimatyzowany schowek\r\nFelgi aluminiowe 17-calowe z ogumieniem letnim\r\n\r\nKupujący zwolniony od opłaty skarbowej - wystawiamy fakturę VAT 23%\r\n\r\nSamochód dostępny do obejrzenia w salonie AutoRud Skoda Kielce na ulicy Krakowskiej 283 w Kielcach.\r\n\r\nPrzyjmujemy auta w rozliczeniu oraz skupujemy auta za gotówkę.\r\n\r\nAtrakcyjna oferta finansowania kredytem lub leasingiem w VW Bank\r\n\r\nZapraszamy również do kontaktu telefonicznego :\r\n\r\nPaweł : 506 - wyświetl numer -\r\nIgor : 785 - wyświetl numer -\r\n\r\nPrezentowana oferta cenowa ma charakter informacyjny, nie stanowi oferty handlowej w rozumieniu Art.66 par.1 Kodeksu Cywilnego oraz nie stanowi odzwierciedlenia aktualnych stanów magazynowych. Aby sprawdzić aktualność ceny i zgodność oferty z rzeczywistością Użytkownik powinien skontaktować się z przedstawicielem handlowym sklepu z którego pochodzi oferta.\r\n-\r\n\r\nDodatkowe informacje: liczba poduszek powietrznych: 6, liczba miejsc: 5, kraj pochodzenia: Polska\r\n\r\nNumer oferty: AKL17A159\r\n'),
(50, 'Mercedes-Benz Klasa E 220 D Coupe 4', '2020 • 8 700 km • Diesel • Coupe', 'Sprzedam swój prywatny samochód (umowa Kupna sprzedaży)\r\nZakupiony przeze mnie w MB Zasada jako nowy.\r\nObecnie z minimalnym przebiegiem 8700 km, tuż po przeglądzie w ASO MB-Zasada.\r\nSamochód jest w stanie perfekcyjnym zarówno technicznym jak i wizualnym, bez jakichkolwiek rys, zadrapań, uszkodzeń.\r\nJestem jego jedynym kierowcą i właścicielem.\r\nNigdy nie był lakierowany, uszkodzony czy naprawiany.\r\nOczywiście posiadam do niego pełną dokumentację.\r\nSamochód posiada pełną gwarancję producenta.\r\n\r\nPełna wersja wyposażeniowa:\r\nTyp: E220 d 4MATIC Coupe\r\n831 Szarość grafitu metalik\r\n225 Tapicerka skórzana – beżowa\r\n22P Pakiet utrzymania pasa ruchu\r\n243 Aktywny asystent utrzymania pasa jazdy\r\n242 Elektrycznie regulowany fotel pasażera z pamięcią ustawień\r\n258 Active Brake Assist – system zapobiegający kolizjom\r\n260 Brak oznaczenia modelu na pokrywie bagażnika\r\n287 Składane oparcie tylnej kanapy\r\n30P Pakiet schowków\r\n309 Uchwyt na napoje\r\n351 System alarmowego połączenia „Emergency call”\r\n367 Przygotowanie do Live Traffic Information\r\n421 Automatyczna skrzynia biegów 9G-TRONIC\r\n431 Galwanizowane manetki zmiany biegów przy kierownicy\r\n440 Tempomat\r\n446 Touchpad\r\n475 System monitorowania ciśnienia w oponach TMPS\r\n549 System multimedialny MBUX\r\n55U Podsufitka materiałowa - beżowa\r\n580 Klimatyzacja automatyczna THERMATIC\r\n79B Przygotowanie do instalacji radia cyfrowego DAB\r\n971 Filtr cząstek stałych dla silników Diesla\r\nB59 DYNAMIC SELECT\r\nP17 Pakiet KEYLESS-GO\r\n871 Bezdotykowy dostęp przy otwieraniu klapy bagażnika\r\n881 Zdalne zamykanie pokrywy bagażnika\r\n889 KEYLESS-GO\r\nP21 Pakiet AIR-BALANCE\r\nP29 Pakiet AMG - elementy stylizacji wnętrza\r\n876 Pakiet oświetlenia wnętrza\r\nL5C Sportowa wielofunkcyjna kierownica wykończona skórą nappa\r\nU09 Górna część deski rozdzielczej obszyta skórą ARTICO\r\nP31 Pakiet AMG - elementy stylizacji nadwozia\r\n677 Zawieszenie z selektywnym systemem tłumienia drgań AGILITY CONTROL\r\n772 Stylizacja AMG\r\nRRD Obręcze kół AMG ze stopów metali lekkich, 19”\r\nP35 MULTIBEAM LED\r\n628 Automatyczna regulacja świateł drogowych Plus\r\n642 MULTIBEAM LED\r\nP47 Pakiet parkowania z kamerą 360°\r\n235 PARKTRONIC (z czujnikami parkowania)\r\n501 Kamera 360°\r\nP49 Pakiet lusterek\r\n249 Lusterka fotochromatyczne\r\n500 Elektrycznie składane lusterka zewnętrzne\r\nP54 Pakiet ochrony przed kradzieżą URBAN GUARD\r\n551 Alarm antywłamaniowy\r\n882 System monitorowania wnętrza samochodu\r\nPBF Pakiet łączności nawigacyjnej\r\n01U Przygotowanie do usług nawigacyjnych\r\n362 Moduł komunikacyjny dla usług Mercedes me\r\n365 Nawigacja na dysku twardym\r\nPBP Pakiet ENERGIZING\r\n355 Przygotowanie do nawigacji\r\n868 Wyświetlacz media 12,3”\r\n873 Podgrzewane przednie siedzenia\r\n891 Oświetlenie Ambiente\r\nPYB Pakiet wyposażenia standardowego\r\n20U Przygotowanie do usług Car Sharing\r\n33U Remote Services Plus\r\n513 System rozpoznawania znaków drogowych\r\n537 Radio cyfrowe\r\n736 Elementy wykończenia wnętrza – czarne drewno jesionu\r\n737 Wykończenie konsoli centralnej – czarne drewno jesionu\r\n897 Bezprzewodowe ładowanie i podłączenie Bluetooth\r\n916 Zbiornik paliwa o zwiększonej pojemności\r\nB51 Zestaw TIREFIT\r\nU12 Dywaniki welurowe\r\nU25 Podświetlane listwy progowe z logo Mercedes-Benz\r\nPYH Pakiet wyposażenia z linią AMG\r\n840 Przyciemniane szyby z funkcją termoizolacji\r\nU29 Układ hamulcowy o zwiększonej wydajności\r\nPYO Pakiet wyposażenia Premium Plus\r\n234 Asystent \"martwego pola\"\r\n275 Fotel kierowcy regulowany elektrycznie z pamięcią ustawień\r\n413 Dach panoramiczny\r\n810 System nagłaśniający Burmester® surround sound\r\nU19 Rozszerzona rzeczywistość dla MBUX\r\nU10 Fotel pasażera z rozpoznawaniem wagi\r\nU22 4-stopniowa regulacja odcinka lędźwiowego/fotel\r\nU60 Aktywna pokrywa silnika\r\nU79 Technologia BlueTEC z AdBlue\r\nU82 2 porty USB z tyłu\r\nU85 Zbiornik AdBlue®, 25l\r\n\r\nObecnie samochód ma zamontowane opony zimowe. Opcjonalnie oferuję drugi komplet opon letnich.\r\n\r\nOsoby zainteresowane zapraszam do kontaktu telefonicznego oraz na wizję jedynie w ASO MB Zasada w Krakowie przy ul. Armii Krajowej.\r\nZakup jest możliwy jedynie po wcześniejszym osobistym zapoznaniu się z pojazdem.\r\n\r\nInformacje umieszczone na stronie internetowej służą jedynie celom informacyjnym.\r\nNie stanowią oferty w rozumieniu przepisów Kodeksu Cywilnego oraz opisu towaru ani zapewnienia w rozumieniu art. 4 Ustawy z dnia 27 lipca 2002 roku o szczególnych warunkach sprzedaży konsumenckiej.\r\nIndywidualne uzgodnienie właściwości i specyfikacji pojazdu następuje przy sprzedaży auta.\r\n\r\nOgłoszenie nie stanowi oferty w rozumieniu art. 66 § 1 kkc\r\nOgłoszenie stanowi zaproszenie do zawarcia umowy w rozumieniu art. 71 kc\r\n'),
(51, 'Peugeot 508', '2021 • 18 km • Hybryda • Kombi', 'Superauto.pl to rewolucja na polskim rynku motoryzacyjnym.\r\n✔ Jesteśmy liderem w dziedzinie zakupu oraz finansowania nowych samochodów - osobowych, dostawczych oraz premium.\r\n✔ Proponujemy unikatowy model usługi, który w ciągu 21 lat sprawdziło już ponad 30 tysięcy Klientów.\r\n✔ Zapewniamy bezpieczeństwo, komfort oraz oszczędność czasu i pieniędzy. Wszystko załatwiamy za Ciebie bez wychodzenia z domu.\r\n✔ Gwarantujemy 1000 samochodów OD RĘKI w stałej ofercie.\r\n✔ Należymy do Wirtualna Polska Holding S.A. notowanej na Giełdzie Papierów Wartościowych.\r\n───────────────────────────────────────────────────────────────────────────\r\nZadzwoń do nas już teraz. Dział handlowy, wyspecjalizowany w marce PEUGEOT\r\n☎ 881 - wyświetl numer -\r\nNumer ogłoszenia: 112718\r\n\r\n❗ CENA SUPERAUTO: 210 000 zł ❗\r\n\r\nZostawiając zapytanie przez formularz kontaktowy, prosimy zostaw swój numer telefonu - ułatwi to skontaktowanie się z Tobą!\r\n───────────────────────────────────────────────────────────────────────────\r\nOferowany samochód:\r\n- 508\r\n- Silnik: 225KM\r\n- Skrzynia biegów: Automatyczna\r\n- Wersja wyposażenia: 1.6 PureTech HYbrid GT Pack S&S EAT8\r\n- Samochód Demo\r\n- Przebieg: 18\r\n- Rocznik 2021\r\nOdbiór u autoryzowanego dealera PEUGEOT\r\n───────────────────────────────────────────────────────────────────────────\r\nFORMA SPRZEDAŻY:\r\n✔️ Leasing\r\n✔️ Kredyt\r\n✔️ Wynajem długoterminowy\r\n✔️ Pożyczka\r\nJest możliwość zostawienia samochodu w rozliczeniu\r\n───────────────────────────────────────────────────────────────────────────\r\nDodatkowe wyposażenie (w cenie samochodu):\r\nLakier: Biały Nacre\r\n\r\n⭕ AGR, PODGRZEWANIE, PAKIET ELEKTRYCZNY + FUNKCJA MASAŻU W FOTELACH PRZEDNICH\r\n\r\n⭕ DESKA ROZDZIELCZA, PANELE DRZWIOWE I KONSOLA CENTRALNA WYKOŃCZONE DREWNEM W KOLORZE SZARYM CHENE\r\n\r\n⭕ KABEL DO GNIAZDA GREEN\'UP®\r\n\r\n⭕ DODATKOWO:\r\n✔️ Dach szklany panoramiczny z roletą i podświetleniem LED, otwierany\r\n✔️ Lakier perłowy\r\n✔️ System Night Vision\r\n✔️ Ładowarka pokładowa jednofazowa 7,4 kW\r\n\r\n───────────────────────────────────────────────────────────────────────────\r\nOdbierz swój wymarzony samochód na terenie CAŁEJ POLSKI !\r\n───────────────────────────────────────────────────────────────────────────\r\nPrzedstawione zdjęcia na ogłoszeniu mają charakter poglądowy\r\nNiniejsze ogłoszenie jest wyłącznie informacją handlową i nie stanowi oferty w myśl art. 66, § 1. Kodeksu Cywilnego.\r\n'),
(52, 'Alfa Romeo', '2022 • 5 km • Hybryda • SUV', 'Kontakt bezpośredni\r\n\r\nKrzysztof Kulasza kom. 695 - wyświetl numer -\r\nMarcin Żurawski kom. 603 - wyświetl numer -\r\n\r\nZdjęcia zamieszczone w ogłoszeniu są zdjęciami poglądowymi.\r\n\r\nAutoryzowany Dealer P.M.POL-CAR oferuje samochód, który jest zamówiony do produkcji z potwierdzonym terminem odbioru na czerwiec 2022.:\r\n\r\nAlfa Romeo Tonale\r\nWersja wyposażenia: Edizione Specjale\r\nSilnik: 1.3 150KM\r\nSkrzynia biegów: AUTOMATYCZNA\r\n\r\nCena katalogowa zamówionego pojazdu: 200650 zł brutto . Do ceny doliczono koszt transportu pojazdu do dealera (500 zł)\r\n\r\nCena już od 180 000 PLN brutto\r\n\r\nGwarancja 5 lat z limitem 200 000 km\r\n\r\nWyposażenie standardowe wersji Edizione Speciale\r\n\r\nStylistyka zewnętrzna:\r\no 20” felgi aluminiowe\r\no Przednie światła główne matrycowe Full LED i tylne Full LED\r\no specjalne czarne logo „Speciale” na przednich błotnikach\r\no przedni grill Alfa Scudetto w ciemnym wykończeniu\r\no wykończenie nadwozia Dark Miron\r\no czerwone zaciski hamulców Brembo\r\no tylne szyby przyciemniane (boczne + tylna)\r\no obramowanie szyb w wykończeniu czarnym Glossy\r\n\r\nstylistyka wnętrza:\r\no deska rozdzielcza z podwójnym szarym szwem\r\no siedzenia pokryte alcantarą z czerwonymi elementami wykończeniowymi\r\no kierownica sportowa obszyta skórą, perforowana, z aluminiowymi manetkami do zmiany biegów\r\no aluminiowe listwy progowe i nakładki na pedały\r\no oświetlenie ambient (czerwone, niebieskie, żółte, zielone)\r\no czarne wykończenie wnętrza\r\no dzielona tylna kanapa z wnęką na narty (60/40) + tylny podłokietnik\r\n\r\nSystemy bezpieczeństwa:\r\no Adaptacyjny tempomat – Intelligent Adaptive Cruise Control\r\no Asystent zmiany pasa ruchu - Lane Support System\r\no Adaptacyjne, automatyczne światła drogowe High Beam System\r\no Czujnik ostrzegający o zmęczeniu kierowcy - Drowsy Driver Warning system\r\no E-Call - ogólnoeuropejski system szybkiego powiadamiania o wypadkach drogowych\r\no Inteligentny system prędkości - wspomaga kierowcę w zachowaniu odpowiedniej prędkości pojazdu dla danego środowiska drogowego - Intelligent Speed Assistant\r\no Ogranicznik prędkości - Speed limiting device\r\no System awaryjnego hamowania przed pieszymi i innymi użytkownikami dróg - Autonomous Emergency System + Breaking Pedestrian System\r\no System rozpoznawania znaków drogowych - Traffic Sign Recognition\r\no Układ ostrzegania przed uderzeniem w przód pojazdu - Forward Collision Warning\r\n\r\nKomfort i funkcjonalność:\r\no 12,3\" wirtualny wyświetlacz zegarów w technologii TFT FULL\r\no 10,25” wyświetlacz dotykowy z nawigacją fabryczną i mapami TomTom\r\no Bezdotykowe otwarcie tylnej klapy\r\no Bezprzewodowy system CarPlay/Android Auto\r\no Czujnik informujący o pozostawieniu przedmiotów na tylnym siedzeniu - Rear Seat Reminder\r\no Czujniki parkowania przednie i tylne z kamerą cofania\r\no Fotele przednie z manualną regulacją + elektryczna 4-stopniowa regulacja lędźwiowa fotela kierowcy\r\no Elektrycznie podnoszona tylna klapa bagażnika\r\no Gniazdo 12V: z przodu i w bagażniku\r\no Klimatyzacja automatyczna 2-strefowa z systemem AQS i tylnym nawiewem na tylną kanapę\r\no Lusterka zewnętrzne podgrzewane, elektrycznie składane i regulowane\r\no Lusterko wewnętrzne elektrochromatyczne\r\no Ładowarka bezprzewodowa\r\no Porty USB: przedni typu A+C i tylny typu A+C\r\no System Alfa DNA z wyborem stylu jazdy (3 MODES + ESC OFF)\r\no System bez kluczykowego otwarcia drzwi - Keyless entry\r\n\r\nDodatkowe opcje płatne\r\n\r\n2IM Pakiet zimowy\r\n33R Pakiet skórzany Premium\r\n3YS Lakier metalizowany niebieski - Blue\r\n499 Zestaw naprawczy Fix&Go\r\n9YZ Autonomiczny system ADAS 2\r\nJRN Elektryczna 4-stopniowa regulacja lędźwiowa fotela kierowcy i pasażera\r\n\r\nP.M. POL-CAR\r\nAutoryzowany Dealer Alfa Romeo, Jeep, Abarth, Fiat, Fiat Professional, Iveco, Isuzu, Seat, Kia\r\n61-057 Poznań, ul. Gorzysława 9\r\n\r\nSamochód objęty fabryczną gwarancją od daty rejestracji (5 lat limit 200000 kilometrów, 3 lata na powłokę lakierniczą, 8 lat na perforację antykorozyjną nadwozia) oraz ASSISTANCE Alfa Romeo. Istnieje możliwość odpłatnego wydłużenia gwarancji do maksymalnie 5 lat.\r\n\r\nOferujemy korzystne finansowanie (kredyt, leasing, najem) dopasowane do indywidualnych potrzeb klienta.\r\nProponujemy atrakcyjne ubezpieczenia komunikacyjne Compensa, Generali, PZU, Warta.\r\n\r\nSerdecznie zapraszam do naszego salonu\r\n\r\nKrzysztof Kulasza kom. 695 - wyświetl numer -\r\nMarcin Żurawski kom. 603 - wyświetl numer -\r\n'),
(53, 'Ford EDGE 2.0 EcoBlue Twin-Turbo', '2020 • 33 000 km • Diesel • SUV', 'Witam\r\n\r\nMam do sprzedania Forda Edge 2020 r. Benzyna 2.0.\r\n\r\nSamochód sprowadzony z Kanady, jestem jego pierwszym właściciel w Polsce. Samochód sprawny oraz nie wymagający żadnych napraw.\r\n\r\n-Elektryczne szyby\r\n-Elektrycznie sterowane lusterka\r\n-Elektrycznie ustawiany fotel kierowcy\r\n-Czujnik deszczu\r\n-Czujnik zmierzchu\r\n-Czujniki parkowania\r\n-Czujnik martwego pola\r\n- Czujnik ostrzegający przed kolizją\r\n-Czujnik ostrzegający o zmęczeniu kierowcy\r\n-Czujnik ostrzegający o ruchu poprzecznym\r\n-Asystent pasa ruchu\r\n-Key less go\r\n-Tempomat\r\n-Kamera cofania\r\n-Bluetooth / USB\r\n-Android auto / Apple car play\r\n-Automatyczna skrzynia biegów\r\n-Automatyczna dwustrefowa klimatyzacja\r\n-Przyciemniane szyby\r\n-Poduszka bezpieczeństwa chroniąca kolana kierowcy i pasażera\r\n-Sterowanie głosowe\r\n-Isofix\r\n-Start / stop\r\n-Światła xenonowe\r\n\r\nCena do negocjacji.\r\n\r\nSamochód sprzedaję, gdyż wymieniam na większy.\r\n\r\nProszę o kontakt pod nr tel. 887 - wyświetl numer -\r\n\r\nNiniejsze ogłoszenie jest wyłącznie informacją handlową i nie stanowi oferty w myśl art. 66, § 1 k.c.\r\nSprzedający nie ponosi odpowiedzialności za ewentualne błędy oraz nieaktualność danego ogłoszenia.\r\n'),
(54, 'Mercedes-Benz Klasa A 35 AMG', '2020 • 11 000 km • Benzyna • Kompakt', 'Cesja leasingu PKO Leasing.\r\n\r\nDo umowy leasingowej jest dodany GAP na okres 59 miesięcy.\r\n\r\nSpłacone 18 rat.\r\n\r\nPozostało do spłaty 41 raty po 1458,27 zł netto.\r\nPozostało do spłaty 41 taty po 86,98 zł brutto za Gap.\r\n\r\nRaty mogę nieznacznie się zmienić z racji zmiennych stóp procentowych.\r\n\r\nWykup 51668,91 zł netto.\r\n\r\nOdstępne 120 tys zł netto - pełna faktura VAT 23%\r\n\r\nMercedes Benz A35 4Matic Amg.\r\n\r\nNa pojazd jest wykupiona 5 letnia gwarancja. Ważna do września 2025.\r\n\r\nData pierwszej rejestracji 2 września 2020.\r\n\r\nPojazd cały oklejony z najmniejszymi detalami bezbarwną folią ochronną również z elementami środka tj wyświetlacz i elementy dekoracyjne piano. Przyciemnione łamy przód, tył plus zmieniony kolor na czarny grila i klamek. Dodatkowo ceramika na felgach i fotelach.\r\nWartość całej usługi 14 tys zł netto.\r\n\r\nPojazd po trzech przeglądach nadplanowych przy 1,5 tys km, 6 tys km i 8 tys km pełny przegląd A z odgrzybianiem klimatyzacji wykonany w ASO.\r\n'),
(55, 'BMW Seria 4 M440i', '2021 • 21 763 km • Benzyna • Coupe', 'M440i xDrive Coupe Cesja Leasingu\r\nOdstępne 40000 PLN netto (FV)\r\nPozostało 25 rat po 4494 PLN netto\r\nWykup (opcjonalny) 136 000 PLN netto.\r\n\r\nSpecyfikacja:\r\nWyposażenie standardowe\r\n2NH Sportowy układ hamulcowy M\r\n2PA Śruby zabezpieczające\r\n2T4 Sportowy dyferencjał M\r\n2TB Sportowa automatyczna skrzynia biegów z łopatkami zmiany biegów\r\n2VB Czujniki ciśnienia powietrza\r\n2VL Zmienny, sportowy układ kierowniczy\r\n302 System alarmowy\r\n428 Trójkąt ostrzegawczy / apteczka\r\n430 Pakiet dodatkowych funkcji lusterek\r\n431 Lusterko wsteczne przyciemniane automatycznie\r\n459 Elektryczna regulacja foteli przednich z pamięcią ustawień fotela kierowcy\r\n493 Pakiet dodatkowych schowków\r\n4KK Listwy ozdobne Aluminium Tetragon\r\n4UR Oświetlenie ambientowe\r\n534 Klimatyzacja automatyczna\r\n5DA Funkcja dezaktywacji poduszki powietrznej\r\n654 Tuner DAB do odbioru cyfrowych stacji radiowych\r\n6AE Teleserwis\r\n6AF Połączenie alarmowe\r\n6AK Usługi ConnectedDrive\r\n6C3 Pakiet Connected Professional\r\n710 Kierownica sportowa M, skórzana\r\n715 Pakiet aerodynamiczny M\r\n754 Spojler tylny M\r\n760 Obramowania BMW Individual Shadow Line czarne na wysoki połysk\r\n775 Podsufitka BMW Individual Anthracite\r\nWyposażenie opcjonalne\r\n1CE Mild Hybrid - permanentny system Start/Stop\r\n1PP 19\" aluminiowe obręcze M Double-spoke 791 z ogumieniem Runflat\r\n248 Ogrzewanie kierownicy\r\n258 Opony z funkcją jazdy awaryjnej Runflat\r\n2VF Zawieszenie adaptacyjne M\r\n33T Pakiet M Technology PLN\r\n420 Przyciemniana szyba tylna i tylne szyby boczne\r\n4AW Panel deski rozdzielczej pokryty skórą ekologiczną Sensatec\r\n4GQ Pasy bezpieczeństwa z przeszyciami w barwach BMW M\r\n5AL System bezpieczeństwa Active Protection\r\n688 Zestaw HiFi Harman Kardon Surround Sound\r\n6DR BMW Drive Recorder\r\n6NW Telefonia komfortowa z ładowaniem bezprzewodowym\r\n6WD Hotspot WiFi\r\n711 Sportowe fotele przednie M\r\n7M9 BMW Individual Shadow Line o rozszerzonym zakresie\r\n8A1 Polska wersja językowa\r\n8AT Polska instrukcja obsługi\r\nZBC Pakiet Business Class\r\n316 Automatyczne otwieranie/zamykanie klapy bagażnika\r\n322 Dostęp komfortowy\r\n488 Podparcie lędzwiowe w fotelach przednich\r\n494 Ogrzewanie foteli przednich\r\nZPI Pakiet innowacji\r\n5AC Asystent świateł drogowych\r\n5AU Systemy asystujące kierowcy Professional\r\n5AZ Reflektory laserowe\r\n5DN Asystent parkowania Plus z systemem kamer 360\r\n610 Wyświetlacz Head-Up\r\n6U3 BMW Live Cockpit Professional z systememnawigacyjnym\r\n6U8 Obsługa za pomocą gestów\r\n\r\n7NH Pakiet Service Inclusive - 5 lat / 100.000km\r\n'),
(57, 'Porsche Panamera 4 PDK', '2012 • 160 000 km • Benzyna • Sedan', 'Witam\r\n\r\nAuto sprowadzone z USA w 2020 r.\r\nWizualnie wszystko w porządku, technicznie również w aucie zostało zrobione zawieszenie 11.02.2022\r\nAkcyza opłacona, auto gotowe do rejestracji.\r\nNie zdążyłem założyć spryskiwaczy bo doszły dopiero dzisiaj 25.02.2022 wstawiam zdjęcia bez spryskiwaczy ale do poniedziałku je założe.\r\nZapraszam do kontaktu.\r\n\r\nWyposażenie\r\n\r\n- skórzana tapicerka\r\n- skórzana kierownica\r\n- komputer pokładowy\r\n- nawigacja\r\n- wielofunkcyjna kierownica\r\n- fotele elektryczne\r\n- podgrzewane fotele przód\r\n- podgrzewane tylne fotele\r\n- elektryczne szyby\r\n- elektrycznie regulowane lusterka\r\n- elektryczne składane lusterka\r\n- centralny zamek\r\n- domykanie szyb z pilota\r\n- światła do jazdy dziennej led\r\n- reflektory bi-xenonowe\r\n- elektrycznie wysuwany spojler\r\n- tył napęd\r\n- system start/stop\r\n- kamera cofania\r\n- czujniki parkowania przednie\r\n- czujniki parkowania tylne\r\n- elektrycznie otwierana pokrywa bagażnika\r\n- dwustrefowa klimatyzacja\r\n- łopatki zmiany biegów\r\n- tempomat\r\n\r\n!!!MOZLIWA ZAMIAN!!!\r\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `carsalesphotos`
--

CREATE TABLE `carsalesphotos` (
  `ID_CarSalesImage` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `img_dir` varchar(255) NOT NULL,
  `img_dir_folder` varchar(255) NOT NULL,
  `ID_CarSalesImageTo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `carsalesphotos`
--

INSERT INTO `carsalesphotos` (`ID_CarSalesImage`, `img_name`, `img_dir`, `img_dir_folder`, `ID_CarSalesImageTo`) VALUES
(125, 'Image1', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b/image1.png', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b', 48),
(126, 'Image2', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b/image2.png', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b', 48),
(127, 'Image3', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b/image3.png', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b', 48),
(128, 'Image5', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b/image5.png', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b', 48),
(129, 'Image6', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b/image6.png', 'web/Cupra Ateca 2.0 TSI 4Drive DSG34584f3a01d76c3963fafcc9e0367b4b', 48),
(130, 'Image1', 'web/Audi A1 1.0 TFSI Ultra Sportback S Tronic24dae39f998a433fe640a0ffe9018d16/image1.png', 'web/Audi A1 1.0 TFSI Ultra Sportback S Tronic24dae39f998a433fe640a0ffe9018d16', 49),
(131, 'Image2', 'web/Audi A1 1.0 TFSI Ultra Sportback S Tronic24dae39f998a433fe640a0ffe9018d16/image2.png', 'web/Audi A1 1.0 TFSI Ultra Sportback S Tronic24dae39f998a433fe640a0ffe9018d16', 49),
(132, 'Image3', 'web/Audi A1 1.0 TFSI Ultra Sportback S Tronic24dae39f998a433fe640a0ffe9018d16/image3.png', 'web/Audi A1 1.0 TFSI Ultra Sportback S Tronic24dae39f998a433fe640a0ffe9018d16', 49),
(133, 'Image4', 'web/Audi A1 1.0 TFSI Ultra Sportback S Tronic24dae39f998a433fe640a0ffe9018d16/image4.png', 'web/Audi A1 1.0 TFSI Ultra Sportback S Tronic24dae39f998a433fe640a0ffe9018d16', 49),
(134, 'Image1', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc/image1.png', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc', 50),
(135, 'Image2', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc/image2.png', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc', 50),
(136, 'Image3', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc/image3.png', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc', 50),
(137, 'Image4', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc/image4.png', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc', 50),
(138, 'Image5', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc/image5.png', 'web/Mercedes-Benz Klasa E 220 D Coupe 4a23b4934c4b50dd10a5e631f3333cacc', 50),
(139, 'Image1', 'web/Peugeot 508797a288fb4fca1f664277f7565b6e2b3/image1.png', 'web/Peugeot 508797a288fb4fca1f664277f7565b6e2b3', 51),
(140, 'Image2', 'web/Peugeot 508797a288fb4fca1f664277f7565b6e2b3/image2.png', 'web/Peugeot 508797a288fb4fca1f664277f7565b6e2b3', 51),
(141, 'Image3', 'web/Peugeot 508797a288fb4fca1f664277f7565b6e2b3/image3.png', 'web/Peugeot 508797a288fb4fca1f664277f7565b6e2b3', 51),
(142, 'Image4', 'web/Peugeot 508797a288fb4fca1f664277f7565b6e2b3/image4.png', 'web/Peugeot 508797a288fb4fca1f664277f7565b6e2b3', 51),
(143, 'Image1', 'web/Alfa Romeoe375aa93c13c19bfc02c29b4861c98de/image1.png', 'web/Alfa Romeoe375aa93c13c19bfc02c29b4861c98de', 52),
(144, 'Image2', 'web/Alfa Romeoe375aa93c13c19bfc02c29b4861c98de/image2.png', 'web/Alfa Romeoe375aa93c13c19bfc02c29b4861c98de', 52),
(145, 'Image3', 'web/Alfa Romeoe375aa93c13c19bfc02c29b4861c98de/image3.png', 'web/Alfa Romeoe375aa93c13c19bfc02c29b4861c98de', 52),
(146, 'Image4', 'web/Alfa Romeoe375aa93c13c19bfc02c29b4861c98de/image4.png', 'web/Alfa Romeoe375aa93c13c19bfc02c29b4861c98de', 52),
(147, 'Image1', 'web/Ford EDGE 2.0 EcoBlue Twin-Turbo76854c84604d07ffdd81e9bfccd39dff/image1.png', 'web/Ford EDGE 2.0 EcoBlue Twin-Turbo76854c84604d07ffdd81e9bfccd39dff', 53),
(148, 'Image2', 'web/Ford EDGE 2.0 EcoBlue Twin-Turbo76854c84604d07ffdd81e9bfccd39dff/image2.png', 'web/Ford EDGE 2.0 EcoBlue Twin-Turbo76854c84604d07ffdd81e9bfccd39dff', 53),
(149, 'Image3', 'web/Ford EDGE 2.0 EcoBlue Twin-Turbo76854c84604d07ffdd81e9bfccd39dff/image3.png', 'web/Ford EDGE 2.0 EcoBlue Twin-Turbo76854c84604d07ffdd81e9bfccd39dff', 53),
(150, 'Image4', 'web/Ford EDGE 2.0 EcoBlue Twin-Turbo76854c84604d07ffdd81e9bfccd39dff/image4.png', 'web/Ford EDGE 2.0 EcoBlue Twin-Turbo76854c84604d07ffdd81e9bfccd39dff', 53),
(151, 'Image1', 'web/Mercedes-Benz Klasa A 35 AMGbcbb6294f73862ab9519b46a8b3a2925/image1.png', 'web/Mercedes-Benz Klasa A 35 AMGbcbb6294f73862ab9519b46a8b3a2925', 54),
(152, 'Image2', 'web/Mercedes-Benz Klasa A 35 AMGbcbb6294f73862ab9519b46a8b3a2925/image2.png', 'web/Mercedes-Benz Klasa A 35 AMGbcbb6294f73862ab9519b46a8b3a2925', 54),
(153, 'Image3', 'web/Mercedes-Benz Klasa A 35 AMGbcbb6294f73862ab9519b46a8b3a2925/image3.png', 'web/Mercedes-Benz Klasa A 35 AMGbcbb6294f73862ab9519b46a8b3a2925', 54),
(154, 'Image4', 'web/Mercedes-Benz Klasa A 35 AMGbcbb6294f73862ab9519b46a8b3a2925/image4.png', 'web/Mercedes-Benz Klasa A 35 AMGbcbb6294f73862ab9519b46a8b3a2925', 54),
(155, 'Image1', 'web/BMW Seria 4 M440ib67d37977b747de56e064448f5eeeecd/image1.png', 'web/BMW Seria 4 M440ib67d37977b747de56e064448f5eeeecd', 55),
(156, 'Image2', 'web/BMW Seria 4 M440ib67d37977b747de56e064448f5eeeecd/image2.png', 'web/BMW Seria 4 M440ib67d37977b747de56e064448f5eeeecd', 55),
(157, 'Image3', 'web/BMW Seria 4 M440ib67d37977b747de56e064448f5eeeecd/image3.png', 'web/BMW Seria 4 M440ib67d37977b747de56e064448f5eeeecd', 55),
(158, 'Image4', 'web/BMW Seria 4 M440ib67d37977b747de56e064448f5eeeecd/image4.png', 'web/BMW Seria 4 M440ib67d37977b747de56e064448f5eeeecd', 55),
(159, 'Image1', 'web/Porsche Panamera 4 PDK852db5e384ec804521a018ddedea8869/image1.png', 'web/Porsche Panamera 4 PDK852db5e384ec804521a018ddedea8869', 57),
(160, 'Image2', 'web/Porsche Panamera 4 PDK852db5e384ec804521a018ddedea8869/image2.png', 'web/Porsche Panamera 4 PDK852db5e384ec804521a018ddedea8869', 57),
(161, 'Image3', 'web/Porsche Panamera 4 PDK852db5e384ec804521a018ddedea8869/image3.png', 'web/Porsche Panamera 4 PDK852db5e384ec804521a018ddedea8869', 57),
(162, 'Image4', 'web/Porsche Panamera 4 PDK852db5e384ec804521a018ddedea8869/image4.png', 'web/Porsche Panamera 4 PDK852db5e384ec804521a018ddedea8869', 57);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `classiccars`
--

CREATE TABLE `classiccars` (
  `ID_ClassicCar` int(11) NOT NULL,
  `CarTitle` varchar(255) NOT NULL,
  `DescriptionSmaller` text NOT NULL,
  `DescriptionBigger` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `classiccars`
--

INSERT INTO `classiccars` (`ID_ClassicCar`, `CarTitle`, `DescriptionSmaller`, `DescriptionBigger`) VALUES
(11, 'Volkswagen Passat 1.9 TDI Basis', '2001 • 290 000 km • Diesel • Kombi', 'Bardzo ładne i całkowicie sprawne auto.\r\nSilnik pracuje bardzo ładnie i świetnie przyspiesza. Zawieszenie nie stuka. Hamulce sprawne. Nowy alternator i akumulator na gwarancji.\r\n\r\nRozrząd nie przejechał nawet 10 000 km po wymianie. Kupującemu przekażę fakturę na usługę zrealizowaną przez serwis (koszt ok. 2000 zł)');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `classiccarsphotos`
--

CREATE TABLE `classiccarsphotos` (
  `ID_ClassicCarImage` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `img_dir` varchar(255) NOT NULL,
  `img_dir_folder` varchar(255) NOT NULL,
  `ID_ClassicCarImageTo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `classiccarsphotos`
--

INSERT INTO `classiccarsphotos` (`ID_ClassicCarImage`, `img_name`, `img_dir`, `img_dir_folder`, `ID_ClassicCarImageTo`) VALUES
(9, 'Image', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac/image.png', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac', 11),
(10, 'Image1', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac/image1.png', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac', 11),
(11, 'Image2', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac/image2.png', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac', 11),
(12, 'Image3', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac/image3.png', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac', 11),
(13, 'Image4', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac/image4.png', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac', 11),
(14, 'Image5', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac/image5.png', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac', 11),
(15, 'Image6', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac/image6.png', 'web/Volkswagen Passat 1.9 TDI Basis7581caaa28f609051e9aee7f93c8f7ac', 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(2, 'user123', '$2y$10$bH.443Oh2QhsKIGxGb/sHOV7D8aWytC8PQcQydU680x1/gwtgHL7q', '2022-04-10 11:35:57');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `carontheway`
--
ALTER TABLE `carontheway`
  ADD PRIMARY KEY (`ID_CarOnTheWay`);

--
-- Indeksy dla tabeli `caronthewayphotos`
--
ALTER TABLE `caronthewayphotos`
  ADD PRIMARY KEY (`ID_CarOnTheWayImage`);

--
-- Indeksy dla tabeli `carrental`
--
ALTER TABLE `carrental`
  ADD PRIMARY KEY (`ID_CarRental`);

--
-- Indeksy dla tabeli `carrentalphotos`
--
ALTER TABLE `carrentalphotos`
  ADD PRIMARY KEY (`ID_CarRentalImage`);

--
-- Indeksy dla tabeli `carsales`
--
ALTER TABLE `carsales`
  ADD PRIMARY KEY (`ID_CarSales`);

--
-- Indeksy dla tabeli `carsalesphotos`
--
ALTER TABLE `carsalesphotos`
  ADD PRIMARY KEY (`ID_CarSalesImage`);

--
-- Indeksy dla tabeli `classiccars`
--
ALTER TABLE `classiccars`
  ADD PRIMARY KEY (`ID_ClassicCar`);

--
-- Indeksy dla tabeli `classiccarsphotos`
--
ALTER TABLE `classiccarsphotos`
  ADD PRIMARY KEY (`ID_ClassicCarImage`);

--
-- Indeksy dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksy dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksy dla tabeli `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksy dla tabeli `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksy dla tabeli `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksy dla tabeli `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksy dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksy dla tabeli `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksy dla tabeli `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksy dla tabeli `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksy dla tabeli `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `carontheway`
--
ALTER TABLE `carontheway`
  MODIFY `ID_CarOnTheWay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `caronthewayphotos`
--
ALTER TABLE `caronthewayphotos`
  MODIFY `ID_CarOnTheWayImage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `carrental`
--
ALTER TABLE `carrental`
  MODIFY `ID_CarRental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `carrentalphotos`
--
ALTER TABLE `carrentalphotos`
  MODIFY `ID_CarRentalImage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT dla tabeli `carsales`
--
ALTER TABLE `carsales`
  MODIFY `ID_CarSales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT dla tabeli `carsalesphotos`
--
ALTER TABLE `carsalesphotos`
  MODIFY `ID_CarSalesImage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT dla tabeli `classiccars`
--
ALTER TABLE `classiccars`
  MODIFY `ID_ClassicCar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `classiccarsphotos`
--
ALTER TABLE `classiccarsphotos`
  MODIFY `ID_ClassicCarImage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
