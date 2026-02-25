-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 09:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farasisokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(6, 'nail kit', 'cutting nails', 1500, 'body tool 1.jpg'),
(8, 'facial roller', 'soothening face', 1000, 'body tool2.jpg'),
(9, 'hair accessories', 'cooling hair', 3000, 'body tool 3.jpg'),
(10, 'make up brushes', 'blending makeup', 2500, 'body tool 4.jpg'),
(11, 'mascara', 'combing lashes', 550, 'make up 1.jpg'),
(12, 'lipgloss', 'softening lips', 350, 'make up 2.jpg'),
(13, 'Eyeshadow', 'beutifying eyes', 700, 'make up 3.jpg'),
(14, 'foundation&sponch', 'blending foundation on face', 890, 'make up 4 .jpg'),
(15, 'vitamin c serum', 'toning face', 400, 'scin care 1.jpg'),
(16, 'sunscreen', 'sunblock from the sun', 500, 'skin care 2.jpg'),
(17, 'body oil', 'Take cares of the skin', 900, 'skin care 3.jpg'),
(18, 'handcream', 'moisturizes the skin', 1300, 'skin care 4.jpg'),
(19, 'hair tools', 'taking care of the hair', 1100, 'hair care1.jpg'),
(20, 'hairmusk', 'taking care of damaged scalp', 1600, 'hair care2.jpg'),
(21, 'hairoil', 'makes the hair to have a good and shint look', 950, 'hair care 3.jpg'),
(22, 'shampoo', 'exfoliating and removing all dirt from the hair', 1300, 'hair care 4.jpg'),
(23, 'facial makeup', 'we offer all services', 1700, 'beuty1.jpeg'),
(24, 'nails available at an affordable price', 'you get to chose the color that you want or the design', 600, 'beuty 2.jpg'),
(25, 'body perfumes ', 'from all fragrances available in our shop', 400, 'beuty 3.jpg'),
(26, 'lipbalm', 'available for all kinds of lips', 250, 'beuty five.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(40, 'vee', '1234', 'gmail.com', '2547897653'),
(41, 'bennedeta', '4567', 'bennedetta@gmail.com', '2547098091');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;