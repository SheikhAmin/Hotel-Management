-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 07:29 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `checkIn` varchar(200) DEFAULT NULL,
  `bed` varchar(200) DEFAULT NULL,
  `roomtype` varchar(200) DEFAULT NULL,
  `roomNo` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `numberOfDaysStay` varchar(200) DEFAULT NULL,
  `totalAmount` varchar(200) DEFAULT NULL,
  `checkout` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `checkIn`, `bed`, `roomtype`, `roomNo`, `price`, `numberOfDaysStay`, `totalAmount`, `checkout`) VALUES
('19101202', 'tahshin', 'tahshin@gmail.com', '01875599999', '13/09/2021', 'Double', 'AC', '101', '2000', NULL, NULL, NULL),
('19101202', 'tahshin', 'tahshin@gmail.com', '01875599999', '13/09/2021', 'Single', 'AC', '107', '1500', NULL, NULL, NULL),
('', '', '', '', '13/09/2021', 'Double', 'Non-AC', '102', '1400', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomNo` varchar(100) DEFAULT NULL,
  `roomType` varchar(200) DEFAULT NULL,
  `bed` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `roomType`, `bed`, `price`, `status`) VALUES
('101', 'AC', 'Double', 2000, 'booked'),
('102', 'Non-AC', 'Double', 1400, 'booked'),
('103', 'AC', 'Single', 1500, 'Not booked'),
('104', 'Non-AC', 'Single', 1200, 'Not booked'),
('105', 'AC', 'Single', 1500, 'Not booked'),
('106', 'AC', 'Single', 1500, 'Not booked'),
('107', 'AC', 'Single', 1500, 'booked'),
('108', 'Non-AC', 'Single', 1200, 'Not booked'),
('109', 'Non-AC', 'Single', 1200, 'Not booked'),
('110', 'Non-AC', 'Single', 1200, 'Not booked');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `phone` varchar(300) DEFAULT NULL,
  `id` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `phone`, `id`, `password`) VALUES
('tahshin', 'tahshin@gmail.com', '01875599999', '19101202', 'passnai'),
('aaa', 'aaa', 'aaa', 'aaa', 'aaa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
