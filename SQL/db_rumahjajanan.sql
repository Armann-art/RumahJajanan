-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2024 at 01:40 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rumahjajanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(80) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(40) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Ahmad Armansyah', 'Ahmad', 'a244bc2be4245c022748235a46dedf15', '082281806540', 'RumahJajanan@gmail.com', 'Jln Bakti Abri, Kp Sidang Karsa, TAPOS, KOTA DEPOK, JAWA BARAT.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Gorengan'),
(3, 'Minuman'),
(4, 'Nasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(150) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(6, 1, 'Bakwan', 10000, '', 'produk1706549316.jpg', 1, '2023-07-11 06:58:38'),
(7, 1, 'Risol', 15000, '', 'produk1706549127.jpg', 1, '2024-01-19 15:42:58'),
(8, 3, 'Es Teh', 5000, '', 'produk1706549112.jpeg', 1, '2024-01-21 11:48:56'),
(9, 3, 'Es Milo', 5000, '', 'produk1706549097.jpeg', 1, '2024-01-21 11:49:30'),
(10, 3, 'Es Jeruk', 8000, '', 'produk1706549082.jpg', 1, '2024-01-21 11:50:11'),
(16, 4, 'Nasi Box Ayam Bakar', 15000, '', 'produk1706549061.jpg', 1, '2024-01-29 16:55:36'),
(17, 4, 'Nasi Bakar Ayam', 13000, '', 'produk1706549047.jpg', 1, '2024-01-29 16:58:57'),
(18, 4, 'Nasi Kuning', 15000, '<p>isi nasi kuning:</p>\r\n\r\n<p>Nasi Kuning</p>\r\n\r\n<p>Kerupuk</p>\r\n\r\n<p>Ayam Goreng</p>\r\n\r\n<p>Sambal</p>\r\n\r\n<p>Irisan telur</p>\r\n\r\n<p>Timun</p>\r\n\r\n<p>Mie</p>\r\n', 'produk1706549010.jpeg', 1, '2024-01-29 17:02:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
