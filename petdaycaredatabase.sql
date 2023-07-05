-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 05, 2023 at 11:14 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petdaycaredatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`id`, `email`, `password`) VALUES
(1, 'jmy@gmail.com', '771f5817f4ae7e4399a30e212e5bfd0a'),
(2, 'montu@gmail.com', '51013dae938eaaa88a4ffecbddc7af94'),
(3, 'jash@gmail.com', '152f357c3a5f035d553ca050a5d0efa4'),
(4, 'muntazir123@gmail.com', 'a246889140a1e6ab884f47adf9bf8d93');

-- --------------------------------------------------------

--
-- Table structure for table `bookingct`
--

CREATE TABLE `bookingct` (
  `uid` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `time2` time DEFAULT NULL,
  `time1` time DEFAULT NULL,
  `dov` date DEFAULT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingct`
--

INSERT INTO `bookingct` (`uid`, `id`, `cid`, `time2`, `time1`, `dov`, `address`) VALUES
(5, 5, 2, '11:23:00', '06:26:00', '2022-05-13', '332 Poco Mas Drive, Dallas , Texas');

-- --------------------------------------------------------

--
-- Table structure for table `caretaker`
--

CREATE TABLE `caretaker` (
  `id` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pincode` int(6) DEFAULT NULL,
  `approved` varchar(255) NOT NULL DEFAULT 'no',
  `document` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'available'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caretaker`
--

INSERT INTO `caretaker` (`id`, `firstname`, `lastname`, `username`, `password`, `gender`, `email`, `mobile`, `address`, `pincode`, `approved`, `document`, `status`) VALUES
(1, 'Jash', 'Shah', 'Jash', '466e029a2f47da49247cc14c141467d5', 'male', 'jash@gmail.com', '9724277188', '2, maninagar bunglows kankaria', 380018, 'yes', 'documents/4f2b64_9fa3f78294304d4d93b933d15eb62594.pdf', 'available'),
(2, 'Sid', 'Dave', 'Sid', '79c9afada00e8aa248f75bfd022f13fb', 'male', 'sid@gmail.com', '9878987678', 'Dev Castle, Isanpur', 380043, 'yes', 'documents/4f2b64_34598eedce7541f0a01d06b97dba4c5d.pdf', 'unavailable'),
(3, 'Vivek', 'Bhajap', 'Vivek', '7d077f716c9a40f5660456534922464f', 'male', 'vivek@gmail.com', '8796879685', '4, Ashwamegh flats, Vasna', 380052, 'yes', 'documents/4f2b64_9fa3f78294304d4d93b933d15eb62594.pdf', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `productname` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `quantity` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `productname`, `price`, `quantity`) VALUES
(179, 2, 'Chain', '500', '2'),
(200, 1, 'Chain', '500', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `productname` varchar(255) NOT NULL,
  `productimage` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) DEFAULT '5',
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `productname`, `productimage`, `price`, `quantity`, `description`, `status`) VALUES
(1, 1, 'Pedigree', 'uploads/pedigree-wet-dog-food-chicken-chunks-in-gravy-for-puppy.jpg', '2000', '10', '70 gm\r\n\r\n', 'available'),
(2, 2, 'Belt', 'uploads/snap-hook-dog-chain-500x500-500x500.jpg', '300', '2', 'Units', 'available'),
(3, 2, 'Chain', 'uploads/51p6rc5y1pl-sl1100--500x500.jpg', '500', '0', 'Units', 'Out Of Stock'),
(4, 1, 'Drools Cat food', 'uploads/4-2-cat-932630-drools-original-imafxchwhpeszjrh.jpg', '100', '9', 'Units\r\n', 'available'),
(5, 2, 'Pet Clothes', 'uploads/little-gangster_1024x1024.jpg', '500', '10', '1.2kg', 'available'),
(6, 2, 'HI TechCollar', 'uploads/yellow_collar_1.png', '25000', '0', 'Units', 'Out Of Stock'),
(12, 10, 'acro', 'uploads/Business Agency Instagram Post .png', '560', '0', 'dbdjdd', 'Out Of Stock');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `category`, `description`) VALUES
(1, 'Food', 'This contains food related products'),
(2, 'Accesories', 'Pet accesories products.'),
(10, 'Clothes', 'pet clothes');

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `productname` varchar(30) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `subprice` varchar(30) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `currenttime` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) DEFAULT 'ordered'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `uid`, `productname`, `price`, `subprice`, `quantity`, `currenttime`, `status`) VALUES
(1, 2, 'Chain', '500', '500', '1', '2022-03-24 14:35:33', 'delivered'),
(2, 2, 'Pedigree', '2000', '2000', '1', '2022-03-24 14:37:29', 'canceled'),
(3, 2, 'Drools Cat food', '100', '1700', '1', '2022-03-24 14:39:36', 'delivered'),
(4, 21, 'Chain', '500', '1000', '1', '2022-03-24 14:47:17', 'canceled'),
(5, 21, 'Chain', '500', '1000', '2', '2022-03-25 04:45:59', 'delivered'),
(6, 21, 'Belt', '300', '1200', '1', '2022-03-25 04:47:37', 'canceled'),
(7, 21, 'Pedigree', '2000', '6000', '3', '2022-03-25 04:47:37', 'canceled'),
(8, 2, 'Drools Cat food', '100', '1700', '17', '2022-03-26 04:25:26', 'delivered'),
(9, 2, 'Chain', '500', '500', '1', '2022-03-26 04:25:26', 'delivered'),
(11, 2, 'HI TechCollar', '25000', '25000', '1', '2022-03-26 04:38:01', 'canceled'),
(12, 2, 'Pedigree', '2000', '2000', '1', '2022-03-26 06:45:50', 'canceled'),
(13, 21, 'Belt', '300', '1200', '4', '2022-03-26 07:28:54', 'delivered'),
(14, 1, 'Chain', '500', '1000', '2', '2022-04-23 15:19:55', 'delivered'),
(15, 1, 'Pedigree', '2000', '4000', '2', '2022-04-23 15:21:00', 'canceled'),
(16, 1, 'Drools Cat food', '100', '200', '2', '2022-04-23 15:21:00', 'canceled'),
(17, 5, 'Chain', '500', '500', '2', '2022-05-12 08:15:36', 'delivered'),
(18, 5, 'Pedigree', '2000', '2000', '1', '2022-05-12 08:15:36', 'delivered'),
(20, 5, 'Belt', '300', '600', '2', '2022-05-12 08:47:07', 'delivered'),
(21, 5, 'Chain', '500', '500', '1', '2022-05-12 08:47:07', 'delivered'),
(22, 1, 'Belt', '300', '300', '1', '2022-07-21 07:37:27', 'delivered'),
(23, 5, 'Belt', '300', '600', '1', '2022-09-23 10:11:58', 'delivered'),
(24, 6, 'Belt', '300', '300', '1', '2022-10-17 06:17:26', 'delivered'),
(25, 6, 'Chain', '500', '1000', '2', '2022-10-17 06:17:26', 'delivered'),
(27, 6, 'Chain', '500', '1000', '2', '2022-10-17 06:18:00', 'canceled'),
(28, 6, 'Chain', '500', '1000', '2', '2022-10-17 06:18:41', 'delivered'),
(29, 7, 'Chain', '500', '1000', '2', '2023-05-27 06:59:02', 'delivered'),
(30, 7, 'Belt', '300', '600', '2', '2023-05-27 06:59:02', 'delivered'),
(31, 7, 'Pedigree', '2000', '2000', '1', '2023-05-27 06:59:02', 'delivered'),
(32, 8, 'Drools Cat food', '100', '1100', '11', '2023-05-29 08:47:20', 'delivered'),
(33, 8, 'Pet Clothes', '500', '500', '1', '2023-05-29 08:47:20', 'delivered'),
(34, 5, 'Belt', '300', '600', '2', '2023-06-05 14:33:36', 'ordered'),
(35, 5, 'Drools Cat food', '100', '200', '2', '2023-06-05 14:33:36', 'ordered');

-- --------------------------------------------------------

--
-- Table structure for table `userinfodata`
--

CREATE TABLE `userinfodata` (
  `id` int(255) NOT NULL,
  `user` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfodata`
--

INSERT INTO `userinfodata` (`id`, `user`, `email`, `mobile`, `comment`) VALUES
(1, 'techdaily_077', 'jashshah343@gmail.com', 9724277188, 'xsxcd');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `id` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pincode` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`id`, `firstname`, `lastname`, `username`, `password`, `gender`, `email`, `mobile`, `address`, `pincode`) VALUES
(1, 'Rahul', 'Patel', 'Rahul', 'ebaaba27b32928a25f2ad6185fc0cc74', 'male', 'rahul@gmail.com', '8768456734', '54B, Sukirti Apartments, Satellite, Ahmedabad', 380014),
(2, 'Sahir', 'Khan', 'Sahir', '6a2b61c313efe7b2452eb994641ced55', 'male', 'sahir@gmail.com', '8978578687', '9, kanchan bhumi, satellite, ahmedabad', 380053),
(3, 'Andrea', 'Banner', 'Andrea', '54910c5c09962d6d268b1f3231fded77', 'female', 'andrea@gmail.com', '8767858697', '1468 Jones Avenue, Texas', 790103),
(4, 'Carol', 'Stone', 'Carol', '35d9b8a73dad4919a46dfed32701f481', 'female', 'carol@gmail.com', '9123465342', '4415 Elmwood Avenue, Arizona', 723593),
(5, 'Petra', 'Washington', 'Petra', '8d2a16d92e5914965c260a520b5e6c79', 'male', 'petra@gmail.com', '9125785736', '332 Poco Mas Drive, Dallas , Texas', 380034),
(6, 'Pratham', 'kapadiya', 'Pratham', '644a4ce744f9a69dc1b1e8d716fc3cd9', 'male', 'pratham23@gmail.com', '8405577432', 'maninagar', 380055),
(7, 'James', 'Adam', 'James', '9ba36afc4e560bf811caefc0c7fddddf', 'male', 'james@gmail.com', '9876876543', 'c-81,jolin streeet washington dc', 380065),
(8, 'fireed ', 'james', 'fireed ', '50ac82e41f06bae94d20eceeb35524b1', 'male', 'fbc@gmail.com', '9898987654', 'hjdhdjd', 380098);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingct`
--
ALTER TABLE `bookingct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caretaker`
--
ALTER TABLE `caretaker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfodata`
--
ALTER TABLE `userinfodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookingct`
--
ALTER TABLE `bookingct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `caretaker`
--
ALTER TABLE `caretaker`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `userinfodata`
--
ALTER TABLE `userinfodata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
