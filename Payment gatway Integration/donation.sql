-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2020 at 11:27 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Donation _Type` varchar(300) NOT NULL,
  `User_Name` varchar(65) NOT NULL,
  `User_Email` varchar(65) NOT NULL,
  `Phone_Number` varchar(65) NOT NULL,
  `Price` varchar(300) NOT NULL,
  `Image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Donation _Type`, `User_Name`, `User_Email`, `Phone_Number`, `Price`, `Image`) VALUES
('books', '', '', '', '107', 'foe all ages.jpg'),
('books', '', '', '', '107', 'foe all ages.jpg'),
('toy', '', '', '', '200', 'photo-1556012018-50c5c0da73bf.jpg'),
('cloths', '', '', '', '100', 'girl cloths.jpg'),
('books', '', '', '', '123', '72d2f779d3f38f15d093eb0c82bbf058.png'),
('toy', '', '', '', '150', 'toy1.jpg'),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('toy', ' ', ' ', ' ', '250', '550_101624761.jpg'),
('toy', ' ', ' ', ' ', '250', '550_101624761.jpg'),
('toy', ' ', ' ', ' ', '250', '550_101624761.jpg'),
('toy', ' ', ' ', ' ', '250', '550_101624761.jpg'),
('toy', ' ', ' ', ' ', '250', 'donation-feature.jpg'),
('toy', ' abc', ' abc12@gmail.com', ' 9456781234', '250', 'donation-feature.jpg'),
('toy', ' abc', ' abc12@gmail.com', ' 9456781234', '250', 'donation-feature.jpg'),
('toy', ' abc', ' abc12@gmail.com', ' 9456781234', '250', 'donation-feature.jpg'),
('toy', ' abc', ' manishsongara1777@gmail.com', ' 9456781234', '250', 'donation-feature.jpg'),
('toy', ' abc', ' manishsongara777@gmail.com', ' 9456781234', '250', 'donation-feature.jpg'),
('toy', ' manju', ' manju267@gmail.com', ' 8612345667', '100', 'donation-feature.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `spay`
--

CREATE TABLE `spay` (
  `ID` int(11) NOT NULL,
  `Purpose` varchar(300) NOT NULL,
  `Amount` varchar(300) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `pid` varchar(200) NOT NULL,
  `Status` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `spay`
--
ALTER TABLE `spay`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
