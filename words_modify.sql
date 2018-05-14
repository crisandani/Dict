-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 09:09 PM
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
-- Table structure for table `words_modify`
--

CREATE TABLE `words_modify` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `short` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `capitol_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `words_modify`
--

INSERT INTO `words_modify` (`id`, `name`, `short`, `description`, `capitol_id`) VALUES
(1, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `words_modify`
--
ALTER TABLE `words_modify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `words_modify`
--
ALTER TABLE `words_modify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
