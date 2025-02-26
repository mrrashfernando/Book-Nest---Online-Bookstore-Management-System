-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 08:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_dbl`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(11, 1, 'Five Feet Apart', 14, 1, '65bbd530d9e51475c21ab313_zcg2SvGTSlyssLZPXO6Z.jpg'),
(12, 1, 'The Sun', 12, 1, 'template-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message1`
--

CREATE TABLE `message1` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message1`
--

INSERT INTO `message1` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'Hirushi Nethmini', 'Hiru2005@gmail.com', '0716417556', 'Hi, this is a testing message'),
(6, 6, 'user01', 'user01@gmail.com', '0715802465', 'Hi this is a testing message');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Rashmika Fernando', '0711839298', 'rashmikalk2004@gmail.com', 'cash on delivery', '26/D,2, Jude Rd, Enderamulla, Wattala', 'The way of the Nameless(2)', 30, '2nd, July,2024', 'pending'),
(2, 1, 'Rashmika Fernando', '0711839298', 'rashmikalk2004@gmail.com', 'cash on delivery', '26/D,2, Jude Rd, Enderamulla, Wattala', 'The way of the Nameless(2)', 30, '2nd, July,2024', 'completed'),
(3, 1, 'Rashmika Fenando', '0711839298', 'rashmikalk@gmail.com', 'cash on delivery', 'flat no. 1, jude rd, Wattala, Sri Lanka - 110034', ', The way of the Nameless (1) , The Sun (1) ', 27, '06-Jul-2024', 'pending'),
(4, 1, 'rashmika fernando', '12345678', 'Rashmikalk2004@gmail.com', 'cash on delivery', 'flat no. 1, street2, colombo, Sri Lanka - 11300', ', The Sun (1) ', 12, '06-Jul-2024', 'completed'),
(5, 5, 'hiru', '0754322', 'hiru2005lk@gmail.com', 'cash on delivery', 'flat no. 1, rd, gampha, Sri Lanka - 11300', ', The way of the Nameless (2) , The Sun (3) ', 66, '07-Jul-2024', 'completed'),
(6, 6, 'user01', '0715802465', 'user01@gmail.com', 'cash on delivery', 'flat no. 3, jude rd, colombo, Sri Lanka - 11300', ', The way of the Nameless (1) , The Sun (1) , Sick and Twisted (4) ', 91, '07-Jul-2024', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(2, 'The way of the Nameless', 15, 'teal-and-orange-fantasy-book-cover-design-template-056106feb952bdfb7bfd16b4f9325c11.jpg'),
(3, 'The Sun', 12, 'template-4.png'),
(6, 'Portals of Infinity', 13, '1003w-HfFIAd1BnL8.jpg'),
(7, 'Five Feet Apart', 14, '65bbd530d9e51475c21ab313_zcg2SvGTSlyssLZPXO6Z.jpg'),
(8, 'Sick and Twisted', 16, 'b3600f518142b049704b477db8f09661.jpg'),
(9, 'Harry Potter and The Chamber of Secret', 14, '9781408855669.jpg'),
(10, 'The Lightening Thief', 14, 'R.jpg'),
(11, 'A Diary of a Young Girl', 13, 'R (1).jpg'),
(12, 'The Book Thief', 12, 'The Book Thief 9781784162122.jpg'),
(13, 'It Start with Us', 14, '{6FEA485E-F72E-4476-8AAF-92FA1E4B87CE}IMG400.jpg'),
(14, 'The Throne of Glass', 15, 'R (2).jpg'),
(15, 'Pride and Prejudice', 12, 'R (3).jpg'),
(16, 'The Alchemist', 11, '91+D6kDOoVL.jpg'),
(17, 'The Woman in the Window', 14, '{D2778FFC-0006-48D4-9FBC-93E1261E77DF}Img100.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Rashmika Fenando', 'rashmika2004@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 'user'),
(2, 'admin01', 'admin01@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(3, 'hirushi', 'hiru22@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'admin'),
(4, 'admin02', 'admin02@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'admin'),
(5, 'Hirushi Nethmini', 'hiru2005lk@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(6, 'user01', 'user01@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(7, 'admin03', 'admin03@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message1`
--
ALTER TABLE `message1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `message1`
--
ALTER TABLE `message1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
