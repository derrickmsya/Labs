-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 03:02 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btc3205`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `api_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `user_id`, `api_key`) VALUES
(1, 3, 'zKOq7yMROGXRjmdYu3Q82ah421QRHxjD5uIgGx4xiWFHJrOpah3bJMxsKZbCdc3q'),
(2, 1, 'AcW54VxZON0k289Bc1WHGX1y46wz4j1kI6SDUI7C5NxZBZ1XkgECDqqarebEswKa'),
(0, 11, 'HUVG4sMzhZ9u7Q0s6JvJgR7RpGsB9uLOPuN32Xt1Pm8rPnQyXeseBZvK4tBYrk7F');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_name` varchar(255) NOT NULL,
  `units` int(11) DEFAULT NULL,
  `unit_price` double(3,2) DEFAULT NULL,
  `order_status` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_name`, `units`, `unit_price`, `order_status`) VALUES
(1, 'fries', 2, 9.99, 'order placed'),
(0, 'mangoes', 2, 3.00, 'order placed'),
(0, 'pizza', 2, 4.00, 'order placed');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `city_name` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` text NOT NULL,
  `file` blob NOT NULL,
  `id` int(11) NOT NULL,
  `utc_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `offset` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`first_name`, `last_name`, `city_name`, `username`, `password`, `file`, `id`, `utc_timestamp`, `offset`) VALUES
('derrick', 'musuya', 'kisumu', '101197', '$2y$10$J63UFuuxLzwwHeUQk9a1C.33trvCLB7e.kSdvmPOiXnNqzg1ij72G', 0x62672d312e6a7067, 11, '2019-05-28 09:42:54', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
