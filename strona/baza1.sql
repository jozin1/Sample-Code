-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Lip 2017, 01:24
-- Wersja serwera: 10.1.24-MariaDB
-- Wersja PHP: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `imgurl` text COLLATE utf8_polish_ci NOT NULL,
  `title` text COLLATE utf8_polish_ci NOT NULL,
  `content` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `books`
--

INSERT INTO `books` (`id`, `imgurl`, `title`, `content`) VALUES
(1, '\"img/m31.jpg\"', 'agaahshshsedhr', 'rgsdhgsedhsedthseths'),
(2, '\"img/m31.jpg\"', 'agaahshshsedhr', 'rgsdhgsedhsedthseths'),
(3, '\"img/m31.jpg\"', 'agaahshshsedhr', 'rgsdhgsedhsedthseths');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `informacje`
--

CREATE TABLE `informacje` (
  `id` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `imgurl` text COLLATE utf8_polish_ci NOT NULL,
  `title` text COLLATE utf8_polish_ci NOT NULL,
  `content` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `informacje`
--

INSERT INTO `informacje` (`id`, `year`, `month`, `day`, `imgurl`, `title`, `content`) VALUES
(1, 2016, 3, 1, '', 'Tytuł 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget rhoncus mi, in vestibulum lorem. Nulla urna mauris, egestas nec erat vel, tempus ullamcorper dolor. Maecenas eu mattis arcu. Aliquam dapibus quis risus eget consequat. Curabitur eu convallis urna, vitae scelerisque est. Nunc eget posuere urna. Nulla facilisi. Phasellus blandit eleifend aliquet. Curabitur porttitor pharetra pretium. Nam ac eros laoreet, consequat felis at, auctor metus.</p>\r\n			'),
(2, 2017, 6, 23, '\"img/m31.jpg\"', 'Tytuł 2  eget rhoncus mi, in vestibulum lorem. Nulla urna mauris, egestas nec erat vel, tempus ullamcorper dolor. Maecenas eu mattis arcu. Aliquam dapibus ', '<p>żółćLorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget rhoncus mi, in vestibulum lorem. Nulla urna mauris, egestas nec erat vel, tempus ullamcorper dolor. Maecenas eu mattis arcu. Aliquam dapibus quis risus eget consequat. Curabitur eu convallis urna, vitae scelerisque est. Nunc eget posuere urna. Nulla facilisi. Phasellus blandit eleifend aliquet. Curabitur porttitor pharetra pretium. Nam ac eros laoreet, consequat felis at, auctor metus.</p>\r\n			'),
(3, 2017, 5, 30, '\"img/IMG_6570.jpg\"', 'Tytuł 3 consectetur adipiscing elit. Vestibulum eget rhoncus mi, in vestibulum lorem. Nulla urna mauris, egestas nec erat vel, tempus ullamcorper dolor. Maecenas eu mattis arcu. Aliquam dapibus ', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget rhoncus mi, in vestibulum lorem. Nulla urna mauris, egestas nec erat vel, tempus ullamcorper dolor. Maecenas eu mattis arcu. Aliquam dapibus quis risus eget consequat. Curabitur eu convallis urna, vitae scelerisque est. Nunc eget posuere urna. Nulla facilisi. Phasellus blandit eleifend aliquet. Curabitur porttitor pharetra pretium. Nam ac eros laoreet, consequat felis at, auctor metus.</p>\r\n			'),
(4, 2017, 3, 14, '\"img/IMG_6587.1.jpg\"', 'rna mauris, egestas nec erat vel, tempus ullamcorper dol', 'The SQL LIKE Operator\r\n\r\nThe LIKE operator is used in a WHERE clause to search for a specified pattern in a column.\r\n\r\nThere are two wildcards used in conjunction with the LIKE operator:\r\n\r\n    % - The percent sign represents zero, one, or multiple characters\r\n    _ - The underscore represents a single character\r\n\r\nNote: MS Access uses a question mark (?) instead of the underscore (_).\r\n\r\nThe percent sign and the underscore can also be used in combinations!\r\nLIKE Syntax\r\nSELECT column1, column2, ...\r\nFROM table_name\r\nWHERE columnN LIKE pattern;\r\n\r\nTip: You can also combine any number of conditions using AND or OR operators.\r\n'),
(6, 2017, 1, 31, '\"img/IMG_6580.jpg\"', 'Tytuł 3 consectetur adipiscing elit. Vestibulum eget rhoncus mi, in vestibulum lorem. Nulla urna mauris, egestas nec erat vel, tempus ullamcorper dolor. Maecenas eu mattis arcu. Aliquam dapibus ', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget rhoncus mi, in vestibulum lorem. Nulla urna mauris, egestas nec erat vel, tempus ullamcorper dolor. Maecenas eu mattis arcu. Aliquam dapibus quis risus eget consequat. Curabitur eu convallis urna, vitae scelerisque est. Nunc eget posuere urna. Nulla facilisi. Phasellus blandit eleifend aliquet. Curabitur porttitor pharetra pretium. Nam ac eros laoreet, consequat felis at, auctor metus.</p>\r\n			');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obrazy`
--

CREATE TABLE `obrazy` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `nr` int(11) NOT NULL,
  `url` text COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `content` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `obrazy`
--

INSERT INTO `obrazy` (`id`, `page`, `nr`, `url`, `opis`, `content`) VALUES
(1, 2, 1, '\"img/IMG_6062.jpg\"', '<strong>przykładowy opis zdjęcia nr1</strong></br>tu coś można wpisać</br>tu też', '<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac tincidunt ante. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In at ex ante. Nunc semper ullamcorper nulla. Donec ante enim, lacinia vitae vestibulum non, faucibus non elit. Nullam facilisis, quam sed molestie fermentum, lorem lectus semper ipsum, eu sollicitudin risus est eget est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque feugiat dui at augue condimentum, sed ultricies leo faucibus.</p>\r\n\r\n<img src=\"img/IMG_6062.jpg\"\r\n<p>\r\nMorbi at sodales turpis. Donec venenatis diam odio, sit amet egestas erat condimentum vitae. Suspendisse maximus scelerisque libero ut pulvinar. Morbi vel aliquet quam. Ut rutrum enim lacus, vel auctor dolor tempus at. Sed rhoncus in urna nec placerat. Cras quis porta arcu. Vestibulum porta tellus vel justo pharetra rutrum. Nunc sit amet ipsum dolor. Ut tellus neque, sollicitudin at ligula a, accumsan viverra nibh. Donec ante ligula, accumsan sit amet nisl quis, sodales consectetur augue. Donec ac nisi quis ligula sodales dapibus sit amet vitae tortor. Mauris ut nisl id est dignissim laoreet et vitae tellus. Aliquam sit amet neque lectus.\r\n\r\nVivamus dapibus risus at risus ullamcorper, sit amet pulvinar turpis imperdiet. Integer vel augue sed risus bibendum bibendum non eu magna. Integer a ex et arcu hendrerit luctus at sed ex. Quisque ut posuere nulla. Quisque nunc quam, mollis finibus porttitor eu, semper et nisi. Praesent ultricies vel mauris sed pulvinar. Aliquam pulvinar turpis sit amet suscipit tempus. Duis aliquam malesuada consequat. Ut mauris enim, pellentesque ac viverra vel, rutrum vel sapien. </p>'),
(2, 2, 2, '\"img/IMG_6093.jpg\"', 'przykładowy opis zdjęcia nr2', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac tincidunt ante. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In at ex ante. Nunc semper ullamcorper nulla. Donec ante enim, lacinia vitae vestibulum non, faucibus non elit. Nullam facilisis, quam sed molestie fermentum, lorem lectus semper ipsum, eu sollicitudin risus est eget est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque feugiat dui at augue condimentum, sed ultricies leo faucibus.\r\n\r\n<img src=\"img/IMG_6062.jpg\"\r\n\r\nMorbi at sodales turpis. Donec venenatis diam odio, sit amet egestas erat condimentum vitae. Suspendisse maximus scelerisque libero ut pulvinar. Morbi vel aliquet quam. Ut rutrum enim lacus, vel auctor dolor tempus at. Sed rhoncus in urna nec placerat. Cras quis porta arcu. Vestibulum porta tellus vel justo pharetra rutrum. Nunc sit amet ipsum dolor. Ut tellus neque, sollicitudin at ligula a, accumsan viverra nibh. Donec ante ligula, accumsan sit amet nisl quis, sodales consectetur augue. Donec ac nisi quis ligula sodales dapibus sit amet vitae tortor. Mauris ut nisl id est dignissim laoreet et vitae tellus. Aliquam sit amet neque lectus.\r\n\r\nVivamus dapibus risus at risus ullamcorper, sit amet pulvinar turpis imperdiet. Integer vel augue sed risus bibendum bibendum non eu magna. Integer a ex et arcu hendrerit luctus at sed ex. Quisque ut posuere nulla. Quisque nunc quam, mollis finibus porttitor eu, semper et nisi. Praesent ultricies vel mauris sed pulvinar. Aliquam pulvinar turpis sit amet suscipit tempus. Duis aliquam malesuada consequat. Ut mauris enim, pellentesque ac viverra vel, rutrum vel sapien. '),
(3, 2, 3, '\"img/IMG_6132.jpg\"', '<strong>przykładowy opis zdjęcia nr3</strong></br>opis cd.', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac tincidunt ante. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In at ex ante. Nunc semper ullamcorper nulla. Donec ante enim, lacinia vitae vestibulum non, faucibus non elit. Nullam facilisis, quam sed molestie fermentum, lorem lectus semper ipsum, eu sollicitudin risus est eget est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque feugiat dui at augue condimentum, sed ultricies leo faucibus.\r\n\r\n<img src=\"img/IMG_6062.jpg\"\r\n\r\nMorbi at sodales turpis. Donec venenatis diam odio, sit amet egestas erat condimentum vitae. Suspendisse maximus scelerisque libero ut pulvinar. Morbi vel aliquet quam. Ut rutrum enim lacus, vel auctor dolor tempus at. Sed rhoncus in urna nec placerat. Cras quis porta arcu. Vestibulum porta tellus vel justo pharetra rutrum. Nunc sit amet ipsum dolor. Ut tellus neque, sollicitudin at ligula a, accumsan viverra nibh. Donec ante ligula, accumsan sit amet nisl quis, sodales consectetur augue. Donec ac nisi quis ligula sodales dapibus sit amet vitae tortor. Mauris ut nisl id est dignissim laoreet et vitae tellus. Aliquam sit amet neque lectus.\r\n\r\nVivamus dapibus risus at risus ullamcorper, sit amet pulvinar turpis imperdiet. Integer vel augue sed risus bibendum bibendum non eu magna. Integer a ex et arcu hendrerit luctus at sed ex. Quisque ut posuere nulla. Quisque nunc quam, mollis finibus porttitor eu, semper et nisi. Praesent ultricies vel mauris sed pulvinar. Aliquam pulvinar turpis sit amet suscipit tempus. Duis aliquam malesuada consequat. Ut mauris enim, pellentesque ac viverra vel, rutrum vel sapien. '),
(4, 2, 4, '\"img/IMG_6196.jpg\"', 'przykładowy opis zdjęcia nr4', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac tincidunt ante. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In at ex ante. Nunc semper ullamcorper nulla. Donec ante enim, lacinia vitae vestibulum non, faucibus non elit. Nullam facilisis, quam sed molestie fermentum, lorem lectus semper ipsum, eu sollicitudin risus est eget est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque feugiat dui at augue condimentum, sed ultricies leo faucibus.\r\n\r\n<img src=\"img/IMG_6062.jpg\"\r\n\r\nMorbi at sodales turpis. Donec venenatis diam odio, sit amet egestas erat condimentum vitae. Suspendisse maximus scelerisque libero ut pulvinar. Morbi vel aliquet quam. Ut rutrum enim lacus, vel auctor dolor tempus at. Sed rhoncus in urna nec placerat. Cras quis porta arcu. Vestibulum porta tellus vel justo pharetra rutrum. Nunc sit amet ipsum dolor. Ut tellus neque, sollicitudin at ligula a, accumsan viverra nibh. Donec ante ligula, accumsan sit amet nisl quis, sodales consectetur augue. Donec ac nisi quis ligula sodales dapibus sit amet vitae tortor. Mauris ut nisl id est dignissim laoreet et vitae tellus. Aliquam sit amet neque lectus.\r\n\r\nVivamus dapibus risus at risus ullamcorper, sit amet pulvinar turpis imperdiet. Integer vel augue sed risus bibendum bibendum non eu magna. Integer a ex et arcu hendrerit luctus at sed ex. Quisque ut posuere nulla. Quisque nunc quam, mollis finibus porttitor eu, semper et nisi. Praesent ultricies vel mauris sed pulvinar. Aliquam pulvinar turpis sit amet suscipit tempus. Duis aliquam malesuada consequat. Ut mauris enim, pellentesque ac viverra vel, rutrum vel sapien. '),
(5, 2, 5, '\"img/IMG_6199.jpg\"', 'przykładowy opis zdjęcia nr5', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac tincidunt ante. Nulla facilisi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In at ex ante. Nunc semper ullamcorper nulla. Donec ante enim, lacinia vitae vestibulum non, faucibus non elit. Nullam facilisis, quam sed molestie fermentum, lorem lectus semper ipsum, eu sollicitudin risus est eget est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque feugiat dui at augue condimentum, sed ultricies leo faucibus.\r\n\r\n<img src=\"img/IMG_6062.jpg\"\r\n\r\nMorbi at sodales turpis. Donec venenatis diam odio, sit amet egestas erat condimentum vitae. Suspendisse maximus scelerisque libero ut pulvinar. Morbi vel aliquet quam. Ut rutrum enim lacus, vel auctor dolor tempus at. Sed rhoncus in urna nec placerat. Cras quis porta arcu. Vestibulum porta tellus vel justo pharetra rutrum. Nunc sit amet ipsum dolor. Ut tellus neque, sollicitudin at ligula a, accumsan viverra nibh. Donec ante ligula, accumsan sit amet nisl quis, sodales consectetur augue. Donec ac nisi quis ligula sodales dapibus sit amet vitae tortor. Mauris ut nisl id est dignissim laoreet et vitae tellus. Aliquam sit amet neque lectus.\r\n\r\nVivamus dapibus risus at risus ullamcorper, sit amet pulvinar turpis imperdiet. Integer vel augue sed risus bibendum bibendum non eu magna. Integer a ex et arcu hendrerit luctus at sed ex. Quisque ut posuere nulla. Quisque nunc quam, mollis finibus porttitor eu, semper et nisi. Praesent ultricies vel mauris sed pulvinar. Aliquam pulvinar turpis sit amet suscipit tempus. Duis aliquam malesuada consequat. Ut mauris enim, pellentesque ac viverra vel, rutrum vel sapien. '),
(6, 1, 1, '\"img/P1170445-1.JPG\"', '<b>Fotografia artystyczna Sediny</b></br>\r\n140 PLN', '<img src=\"img/P1170445-1.JPG\" style=\"margin: auto; display: block;\"><p>Fotografia artystyczna Sediny - monumentalnej rzeźby z brązu stojącej przed wojną naprzeciw Urzędu Morskiego  przy ul. Dworskiej w Szczecinie. Monument zaginął lub jest schowany - zachowały się jego miniatury i zdjęcia.</br> 30 x 30 cm , rama oszklona </br> 140 PLN</p>'),
(7, 1, 2, '\"img/P1170465-1.JPG\"', '<b>Olej na płótnie niemieckiego malarza F. Pitshke</b></br>\r\n860 PLN', '<img src=\"img/P1170465-1.JPG\" style=\"margin: auto; display: block;\"><p><p>Olej na płótnie niemieckiego malarza F. Pitshke - z kręgu Salvadora Dali, ok. 1966r.</br> wym. 70 x 38 cm. w ramie, stan bardzo dobry.</br> Styl sugestywny.</br>860 PLN</p>'),
(8, 1, 3, '\"img/P1170453-1.JPG\"', '<b>Grafika kol. \"Trzy gracje i czwarta martwa\"</b></br>\r\n240 PLN', '<img src=\"img/P1170453-1.JPG\" style=\"margin: auto; display: block;\">\r\n<p>Grafika kol. \"Trzy gracje i czwarta martwa\", szk. Gladys Afamado,Urugwaj,</br> ok.1959 r. w.25 x 35 </br> 240 PLN</p>'),
(9, 1, 4, '\"img/P1170440 (1).JPG\"', '<b>Litografia Greniera \"Dobry pasterz\"</b></br>\r\n350 PLN', '<img src=\"img/P1170440 (1).JPG\" style=\"margin: auto; display: block;\"><p>Litografia Greniera \"Dobry pasterz\", pocz.XX w., dzieło symboliczne, rama, szkło,</br>28 x 38 </br> 350 PLN</p>'),
(10, 1, 5, '\"img/P1170441-1.JPG\"', '<b>Karykatura Ali Baby</b></br>\r\n130 PLN', '<img src=\"img/P1170441-1.JPG\" style=\"margin: auto; display: block;\">\r\n<p>Karykatura Ali Baby, szk. Holenderska,1974 r., rama, szkło, </br> 32 x 28 </br> 130 PLN</p>'),
(11, 1, 6, '\"img/P1170452-1.JPG\"', '<b>\"Akt czerwony\"</b></br> Barbara Kubiak</br>\r\n170 PLN', '<img src=\"img/P1170452-1.JPG\" style=\"margin: auto; display: block;\">\r\n<p>\"Akt czerwony\"  Barbary Kubiak, akwarela 2004 r., rama, szkło, </br>48 x 28</br>170 PLN</p>'),
(12, 1, 7, '\"img/P1170463-1.JPG\"', '<b>Port Churchil, Kanada</b></br>z kolekcji Jacka Londona</br>\r\n1680 PLN', '<img src=\"img/P1170463-1.JPG\" style=\"margin: auto; display: block;\">\r\n<p>Olej na płótnie - Port Churchil, Kanada ( z kolekcji Jacka Londona) 1928 r </br>48x 32 </br>1680 PLN</p>');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informacje`
--
ALTER TABLE `informacje`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obrazy`
--
ALTER TABLE `obrazy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `informacje`
--
ALTER TABLE `informacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `obrazy`
--
ALTER TABLE `obrazy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
