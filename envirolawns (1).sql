-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 29, 2023 at 09:09 PM
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
(13, 'fniwntest67', '$2y$10$XWwsQ8ot0LQewKXUsEIMv.FhdSIsERKm7ZrvbWwgc.hQ7f3v2X.oa', 'cc56@mahurangi.school.nz', '2d1fbea655178481c686ab0fb24f492d'),
(18, 'ndvnd', '$2y$10$xhv6nmN8pyzRnZvIaHx1uO3ufX7HbhrEeDwdRlt4XLlctoyBpU2iK', 'envirolawnz1@gmail.com', '64fe555a2e1b5'),
(19, 'ghvhgbbr', '$2y$10$uGPshXC8/3FvQ10XL/Cydum7ijlHMmktUE6YjjpBZNUAsWee4GBVy', 'vneun5ch28952x38n73@gmail.com', '64fe5599f18a4'),
(20, 'bbhjmbjn', '$2y$10$ah5umTGCNrAVNiOvs/SjYO4ySRBeSfZkgURaGZG.PbR79xfG1cdUK', 'charlie.cheeseman.nz@gmail.com', '64fe5b920886a'),
(21, 'vnruscbhw', '$2y$10$C/ygbqCiGUV36cpEK18o7.OVDRyJlQTrg1yN3UzYyA5tj3quY7JR6', 'charlie.cheeseman.nz@gmail.com', '64fe5bed09c52');

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
(122, '', '', '', ''),
(131, 'john', 'steve', 'steve@gmail.com', 'testing675'),
(132, '', '', '', ''),
(133, '', '', '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `core`
--

INSERT INTO `core` (`core_id`, `surname`, `firstname`, `ph`, `ad1`, `ad2`) VALUES
(170001, 'Olive', 'Grant', '0201234567', '62 Smith Road', 'Warkworth'),
(170002, 'Bounty', 'William', '0221234567', '23 Omaha Valley Rd', 'Warkworth');

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

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `results_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `core_id` int(11) NOT NULL,
  `result` varchar(1) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`results_id`, `standard_id`, `title`, `core_id`, `result`, `Date`) VALUES
(1, 91900, 'Inquiry', 170001, '', '2022-02-09'),
(2, 91909, 'Internal', 170001, '', '2022-02-09'),
(3, 91903, 'external', 170001, '', '2022-02-09'),
(4, 91909, 'External', 170001, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `standard_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `version` int(11) NOT NULL,
  `extra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `standards`
--

INSERT INTO `standards` (`standard_id`, `title`, `version`, `extra`) VALUES
(91900, 'Inquiry', 1, 1),
(91902, 'Create a Database', 1, 1),
(91903, 'Create A website', 1, 1),
(91909, 'Present a reflective analysis of developing a digital outcome', 1, 1);

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
-- Indexes for table `core`
--
ALTER TABLE `core`
  ADD PRIMARY KEY (`core_id`),
  ADD KEY `core_id` (`core_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`results_id`),
  ADD KEY `results_id` (`results_id`),
  ADD KEY `standard_id` (`standard_id`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
  ADD PRIMARY KEY (`standard_id`),
  ADD KEY `standard_id` (`standard_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `core`
--
ALTER TABLE `core`
  MODIFY `core_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170003;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `results_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
