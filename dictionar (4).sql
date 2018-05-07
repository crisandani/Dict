-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 05:05 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dictionar`
--

-- --------------------------------------------------------

--
-- Table structure for table `capitol`
--

CREATE TABLE `capitol` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capitol`
--

INSERT INTO `capitol` (`id`, `name`) VALUES
(1, 'IT'),
(2, 'Automatizari');

-- --------------------------------------------------------

--
-- Table structure for table `capitol_words`
--

CREATE TABLE `capitol_words` (
  `id` int(11) NOT NULL,
  `capitol_id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capitol_words`
--

INSERT INTO `capitol_words` (`id`, `capitol_id`, `word_id`) VALUES
(4, 1, 2),
(5, 1, 3),
(6, 1, 4),
(7, 1, 5),
(9, 2, 5),
(14, 2, 7),
(15, 1, 6),
(16, 1, 1),
(17, 1, 7),
(18, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE `other` (
  `id_word` int(11) NOT NULL,
  `link_text` text NOT NULL,
  `link_img` text NOT NULL,
  `my_binary` binary(50) NOT NULL,
  `my_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `e_mail`, `password`, `birthday`) VALUES
(1, 'crisan', 'daniel', 'daniel.proba@yahoo.com', 'daniel1234', '0000-00-00'),
(3, 'raul', 'dobra', 'raul.dobra@yahoo.com', 'raul1234', '1996-09-01'),
(4, 'Admin', 'admin', 'admin@yahoo.com', 'admin1234', '2000-01-01'),
(5, 'Daniel', 'Gabriel', 'crisan.daniel22@yahoo.com', 'daniel1234', '1996-01-22'),
(13, 'daniel', 'daniel', 'daniel@yahoo.com', '123456', '2010-01-01'),
(14, 'aaaaaaaaaa', 'aaaaaaaaaaaa', 'aaaaaaaaaaaaa@yahoo.com', 'dasda', '1111-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `short` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `files` binary(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `name`, `short`, `description`, `files`) VALUES
(1, 'Cache', '', 'Pentru a mari eficienta legaturii la Internet, paginile web mai des vizitate sunt pastrate local pe calculatorul dvs., iar la o noua accesare a acestora, ele va vor fi servite direct de pe propriul calculator, accesul fiind aproape instantaneu. Toate aceste informatii stocate formeaza memoria cache a legaturii la Internet.', 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(2, 'Criptare', '', 'Procesul de codificare a informatiilor transmise pe Internet, pentru a asigura securitatea acestor informatii, precum si a preveni accesarea lor de catre utilizatori neautorizati.', 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(3, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(4, 'DTP', 'Desk Top Publishing', 'Categorie de software orientat pe tehnoredactarea computerizata a documentelor mai complexe, in special tehnoredactarea de reviste si publicatii.', 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(5, 'Fisier', '', 'Reprezinta o colectie de date stocate pe un suport magnetic extern (cum ar fi hard-diskuri, dischete sau benzi magnetice). Ele sunt identificate printr-un nume si printr-o extensie de nume optionala.', 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(6, 'Pixel', 'Un punct de pe monitor', 'Reprezinta cea mai mica unitate grafica utilizata in afisarea imaginilor pe monitorul calculatorului.', 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(7, 'Sata', 'Serial Advanced Technology Attachement', 'Este un standard de conexiune a hard disk-urilor sau DVD-urilor; succesorul conexiunii EIDE. Un canal SATA poate conecta un singur HDD sau DVD.', 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `capitol`
--
ALTER TABLE `capitol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capitol_words`
--
ALTER TABLE `capitol_words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `capitol_id` (`capitol_id`),
  ADD KEY `word_id` (`word_id`);

--
-- Indexes for table `other`
--
ALTER TABLE `other`
  ADD PRIMARY KEY (`id_word`),
  ADD KEY `my_binary` (`my_binary`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `capitol`
--
ALTER TABLE `capitol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `capitol_words`
--
ALTER TABLE `capitol_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `capitol_words`
--
ALTER TABLE `capitol_words`
  ADD CONSTRAINT `capitol_words_ibfk_1` FOREIGN KEY (`capitol_id`) REFERENCES `capitol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `capitol_words_ibfk_2` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `other`
--
ALTER TABLE `other`
  ADD CONSTRAINT `other_ibfk_1` FOREIGN KEY (`id_word`) REFERENCES `words` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;