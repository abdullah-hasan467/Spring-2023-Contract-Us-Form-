-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 07:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactinfo`
--

CREATE TABLE `contactinfo` (
  `firstName` text NOT NULL,
  `lastName` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `contactMessage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactinfo`
--

INSERT INTO `contactinfo` (`firstName`, `lastName`, `email`, `phone`, `contactMessage`) VALUES
('Raghib', 'Shahriyer', 'shahriyerUser@elobyte.com', '01638414865', 'efsdfdsf'),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('Hasan', 'Abdullah', 'm.hasan3444@gmail.com', '01521514957', 'This is a message.'),
('', '', '', '', ''),
('Hossain', 'Abdullah', 'alhossain21@gmail.com', '01799625673', 'Lorem Set two background images for the'),
('', '', '', '', ''),
('Ariful ', 'Hassan', 'arifulhassan@gmail.com', '01521314075', 'Set two background images for the Set two background images for the'),
('', '', '', '', ''),
('', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
