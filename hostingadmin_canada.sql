-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2019 at 05:40 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostingadmin_canada`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `regular_price` varchar(100) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `review_users` int(11) DEFAULT NULL,
  `reviews` varchar(255) DEFAULT NULL,
  `url_1` varchar(255) DEFAULT NULL,
  `url_2` varchar(255) DEFAULT NULL,
  `img_popular` varchar(250) NOT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `product_price`, `regular_price`, `shipping`, `quantity`, `images`, `review_users`, `reviews`, `url_1`, `url_2`, `img_popular`, `ct_dt`) VALUES
(1, 'Anti-Aging Skin CreamÂ©', 'Scientifically proven deep moisturizing anti-aging skin cream. Winner of the Natural Health Beauty', '0.00', '120.99', '4.95', 3, 'images/products_image/skin_new19_1.png', 569, 'images/5-star.png', 'https://track.clickbooth.com/c/aff?lid=607179&subid1={affiliate_id}&subid2={transaction_id}', '', 'images/popular_image/most-populer3.png', '2019-05-14 06:49:28'),
(2, 'Most Popular Pure Keto FormulaÂ©', 'All natural miracle weight-loss supplement! Lose weight safely without diet or exercise!', '0.00', '109.95', '4.95', 4, 'images/products_image/keto_new18_1.png', 611, 'images/4-half-star.png', 'https://track.clickbooth.com/c/aff?lid=611851&subid1={affiliate_id}&subid2={transaction_id}', '', 'images/popular_image/most-populer.png', '2019-05-29 19:17:19'),
(3, '#1 Male ENHANCEMENT In The CountryÂ©', 'Get Bigger, Last Longer, Stay Harder Male Enhancement Solution!', '0.00', '87.95', '6.95', 2, 'images/products_image/srvyme.png', 25, 'images/5-star.png', 'https://track.clickbooth.com/c/aff?lid=607180&subid1={affiliate_id}&subid2={transaction_id}', '', 'images/popular_image/most-populer.png', '2019-05-10 12:44:09'),
(4, '#1 Brain Enhancer In The WorldÂ©', 'Intense Focus.. New Formula. Activate Your Brain Power. Think Faster.', '0.00', '134.99', '4.95', 1, 'images/products_image/srvybrain.jpeg', 880, 'images/5-star.png', 'https://online-news-bulletin.com/?a=207462&c=18339&s1={affiliate_id}&s2={transaction_id}', '', '', '2019-05-13 10:09:38'),
(5, 'Garcinia Nature\'s SlimÂ©', 'The Naturally Effective Solution To Healthy Fat Loss!', '0.00', '134.95', '4.95', 4, 'images/products_image/srvydiet2.png', 429, 'images/4-half-star.png', 'https://track.clickbooth.com/c/aff?lid=607177&subid1={affiliate_id}&subid2={transaction_id}', '', '', '2019-05-11 08:40:42'),
(6, 'Pro Quality Testosterone BoosterÂ©', 'Get Explosive Muscle Gain and a Renewed Sex Drive with this Extreme Muscle-Building Supplement!', '0.00', '90.95', '4.95', 2, 'images/products_image/srvymuscle.png', 762, 'images/5-star.png', 'https://track.clickbooth.com/c/aff?lid=607178&subid1={affiliate_id}&subid2={transaction_id}', '', '', '2019-05-11 08:40:44'),
(7, 'Top Rated ED Dysfunction FormulaÂ©', 'Get Bigger, Last Longer, Stay Harder. Get MAXIMUM Confidence!', '0.00', '85.95', '4.95', 5, 'images/products_image/me1.jpg', 302, 'images/4-half-star.png', 'https://blk0ps.com/?a=1117&c=1091&s1={affiliate_id}&s2={transaction_id}', '', '', '2019-05-11 08:40:46'),
(8, 'Hydroxicil - #1 Men\'s Skin Cream', 'Achieve great looking skin in just 2 weeks! The perfect gift for your husband/boyfriend!', '59.95 ', '0.00', '4.95', 5, 'images/products_image/m_skin_new19_1.png', 302, 'images/4-half-star.png', 'https://auvelaskincare.com/#/en/checkout/?campaign=18000a&subid1=292864&subid2=117080&subid3=9Zmah30C283p96iE8uKCg0z4vaq&subid4=%7b123123123%7d&temp=187156804', '', '', '2019-05-14 06:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ct_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `ct_dt`) VALUES
(1, 'amzus@crm.com', 'Admin@1', '2019-04-19 05:23:19');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
