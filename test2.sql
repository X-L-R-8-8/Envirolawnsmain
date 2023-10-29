-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 05, 2023 at 11:45 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `core`
--

CREATE TABLE `core` (
  `core_id` int(11) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `ph` varchar(20) NOT NULL,
  `ad1` varchar(50) NOT NULL,
  `ad2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core`
--

INSERT INTO `core` (`core_id`, `surname`, `firstname`, `ph`, `ad1`, `ad2`) VALUES
(170001, 'Olive', 'Grant', '0201234567', '62 Smith Road', 'Warkworth'),
(170002, 'Bounty', 'William', '0221234567', '23 Omaha Valley Rd', 'Warkworth');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `results_id` int(11) NOT NULL,
  `standardnum` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `core_id` int(11) NOT NULL,
  `result` varchar(1) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`results_id`, `standardnum`, `title`, `core_id`, `result`, `Date`) VALUES
(1, 91900, 'Inquiry', 170001, '', '2022-02-09'),
(2, 91909, 'Internal', 170001, '', '2022-02-09'),
(3, 91903, 'external', 170001, '', '2022-02-09'),
(4, 91909, 'External', 170001, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `standardID` int(11) NOT NULL,
  `title` text NOT NULL,
  `version` int(11) NOT NULL,
  `extra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `standards`
--

INSERT INTO `standards` (`standardID`, `title`, `version`, `extra`) VALUES
(91903, 'Create A website', 1, 1),
(91902, 'Create a Database', 1, 1),
(91900, 'Inquiry', 1, 1),
(91909, 'Present a reflective analysis of developing a digital outcome', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core`
--
ALTER TABLE `core`
  ADD PRIMARY KEY (`core_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`results_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core`
--
ALTER TABLE `core`
  MODIFY `core_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170003;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `results_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
