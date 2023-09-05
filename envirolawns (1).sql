-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 06, 2023 at 12:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `envirolawns`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`, `activation_code`) VALUES
(1, 'test', '$2y$10$SfhYIDtn.iOuCW7zfoFLuuZHX6lja4lF4XA4JqNmpiH/.P3zB8JCa', 'test@test.com', ''),
(2, 'chusdbcjs', '$2y$10$3ju8tP5xu298CKEvETymS.wnjow399wOIA9X46iddXT9UhnY0t5C2', 'charlie.cheeseman.nz@gmail.com', ''),
(3, 'dan', '$2y$10$FS8QWl685pJeAGGiHxOid.9CxGHW/Q8QYwUmWMjIF5s8B2W1eQ8QK', 'danwenzlick2@gmail.com', ''),
(4, 'dan1234', '$2y$10$Oa4HtmcizFptA0lTvqURROCh5Xwina9z6AngSCd48KgMRJ8CLHGdO', 'danwenzlick2@gmail.com', '64f7a1df3f0b8'),
(5, 'dan123456', '$2y$10$6Kb27F5HvukyFW0WP2kvwukBVxsoAfobaW/rSnoUaoEuAFF1opUq2', 'dw10@mahurangi.school.nz', '64f7a2015d1e2'),
(6, 'jhbjhdbs', '$2y$10$DPEmgwe7LO7BFCEbAenhCuWED7gnhNXszU8U./P8E.2aFxCX.G6DK', 'charlie.cheeseman.nz@gmail.com', '64f7a21638b9a'),
(7, 'charlie', '$2y$10$gP9qQTrAE/YyXbLTXe/kB.ZSQBXNWtqmduwK47.TMz.jq7oL07hQq', 'cc56@mahurangi.school.nz', '64f7a23a0eff5');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `event_date`, `start_time`, `end_time`, `description`) VALUES
(1, 1, '2023-09-28', '21:32:00', '12:32:00', 'njbnjk');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fname`, `lname`, `email`, `comment`) VALUES
(1, 'jack', 'lee', 'jack@mail.com', 'i like your food'),
(2, 'Jamie', 'jacobs', 'jamie@email.com', 'i like your drinks'),
(99, '', '', '', ''),
(100, '', '', '', ''),
(101, '', '', '', ''),
(102, '', '', '', ''),
(103, '', '', '', ''),
(104, '', '', '', ''),
(105, '', '', '', ''),
(106, '', '', '', ''),
(107, '', '', '', ''),
(108, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title1` varchar(100) NOT NULL,
  `text1` text NOT NULL,
  `image1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title1`, `text1`, `image1`) VALUES
(1, 'About us', 'Hi, I’m Charlie, I’m 16 years old, and I’ve lived in Omaha for 5 years. After learning about the effects of CO2 pollution on the environment and the importance of sustainability as part of our role as kaitiakitanga for our planet, I wanted to do something positive.\r\n\r\nMost people employ lawn mowing services in Omaha, and none of them is carbon neutral... until now.\r\n\r\nResearch from the USA shows that gasoline-powered lawnmowers use 200 million gallons of gas per year and emit eight times more nitrogen oxides, 3,300 times more hydrocarbons, 5,000 times more carbon monoxide, and more than twice the CO2 per hour of operation than electric lawnmowers.\r\n\r\nI use Meridian Energy so my batteries are charged from renewable electricity. In fact, by not buying your own lawnmower and using me, you’re helping our environment and improving our air quality.\r\n\r\nA new gas-powered lawnmower produces the same amount of volatile organic compounds and nitrogen oxides emissions of air pollution in one hour of operation as 11 new cars each being driven for one hour.\r\n', 'profilephoto.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
