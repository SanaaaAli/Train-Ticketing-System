-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2020 at 08:54 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(30) NOT NULL,
  `station_from` int(30) NOT NULL,
  `station_to` int(30) NOT NULL,
  `cabin_price` float NOT NULL,
  `seat_price` float NOT NULL,
  `berth_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `station_from`, `station_to`, `cabin_price`, `seat_price`, `berth_price`) VALUES
(1, 1, 2, 400, 350, 380),
(2, 1, 3, 380, 320, 350),
(3, 1, 4, 450, 400, 420),
(4, 1, 5, 450, 400, 420),
(5, 1, 6, 400, 350, 380),
(6, 2, 1, 400, 350, 380),
(7, 2, 3, 550, 500, 520),
(8, 2, 4, 500, 450, 520),
(9, 2, 5, 700, 650, 680),
(10, 2, 6, 400, 350, 380),
(11, 3, 1, 380, 320, 350),
(12, 3, 2, 550, 500, 520),
(13, 3, 4, 650, 600, 620),
(14, 3, 5, 650, 600, 620),
(15, 3, 6, 600, 550, 580),
(16, 4, 1, 450, 400, 420),
(17, 4, 2, 500, 450, 480),
(18, 4, 3, 650, 600, 620),
(19, 4, 5, 400, 350, 380),
(20, 4, 6, 320, 280, 300),
(21, 5, 1, 450, 400, 420),
(22, 5, 2, 700, 650, 680),
(23, 5, 3, 650, 600, 620),
(24, 5, 4, 400, 350, 380),
(25, 5, 6, 500, 450, 480),
(26, 6, 1, 400, 350, 380),
(27, 6, 2, 400, 350, 380),
(28, 6, 3, 600, 550, 580),
(29, 6, 4, 320, 280, 300),
(30, 6, 5, 500, 450, 480);

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` int(30) NOT NULL,
  `station` varchar(200) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `station`, `address`) VALUES
(1, 'Dhaka', 'Kamalapur Railway Station, Motijheel, Dhaka'),
(2, 'Chittagong', 'Chattogram Railway Station, Battoli, Station Road, Chittagong'),
(3, 'Sylhet', 'Sylhet Railway Station, N208, Sylhet City'),
(4, 'Khulna', 'Kodomtola Rail Station, Railway Road, Khulna'),
(5, 'Rajshahi', 'Rajshahi Railway Staion, Ishwardi Junction, Station Road, Rajshahi'),
(6, 'Barisal', 'Payra Port Rail, Akhaura Junction, Barisal');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Train Station Ticketing System', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(30) NOT NULL,
  `ticket_no` int(200) NOT NULL,
  `station_from` int(30) NOT NULL,
  `station_to` int(30) NOT NULL,
  `price` float NOT NULL,
  `ticket_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= Cabin,2=Seat,3=Berth',
  `processed_by` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_no`, `station_from`, `station_to`, `price`, `ticket_type`, `processed_by`, `date_created`) VALUES
(1, 2147483647, 3, 2, 520, 3, 1, '2021-04-25 11:21:12'),
(2, 2147483648, 3, 2, 520, 3, 1, '2021-04-25 11:21:12'),
(3, 2147483649, 3, 2, 520, 3, 1, '2021-04-25 11:21:12'),
(4, 2147484109, 1, 5, 400, 2, 1, '2021-04-25 21:03:29'),
(5, 2147485331, 1, 2, 400, 1, 1, '2021-04-26 18:47:20'),
(6, 2147485332, 1, 2, 400, 1, 1, '2021-04-26 18:47:20'),
(7, 2147485333, 1, 2, 400, 1, 1, '2021-04-26 18:47:20'),
(8, 2147485334, 1, 2, 400, 1, 1, '2021-04-26 18:47:20'),
(9, 2147485335, 1, 2, 400, 1, 1, '2021-04-26 18:47:20'),
(10, 2147488004, 6, 4, 280, 2, 1, '2021-04-27 19:03:41'),
(11, 2147488005, 6, 4, 280, 2, 1, '2021-04-27 19:03:41'),
(12, 2147495670, 2, 5, 650, 2, 1, '2021-04-28 22:50:41'),
(13, 2147495671, 2, 5, 650, 2, 1, '2021-04-28 22:50:41'),
(14, 2147495672, 2, 5, 650, 2, 1, '2021-04-28 22:50:41'),
(15, 2147495673, 2, 5, 650, 2, 1, '2021-04-29 22:50:41'),
(16, 2147495993, 3, 1, 350, 3, 1, '2021-04-29 21:17:01'),
(17, 2147495994, 3, 1, 350, 3, 1, '2021-04-29 21:17:01'),
(18, 2147495995, 3, 1, 350, 3, 1, '2021-04-29 21:17:01'),
(19, 2147495996, 3, 1, 350, 3, 1, '2021-04-30 21:17:01'),
(20, 2147495997, 3, 1, 350, 3, 1, '2021-04-30 21:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1=Admin,2=Staff',
  `station_id` int(30) NOT NULL COMMENT 'for staff only'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `station_id`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1, 0),
(2, 'Station 1 Staff', 's1staff', '0d66dc2d5419f0252b94dc25b432b258', 2, 1),
(3, 'Station 2 Staff', 's2staff', '8452ceee4febd49448f5f26c7299d56f', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
