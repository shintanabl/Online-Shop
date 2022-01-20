-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 06:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thrifting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `name_admin` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp_admin` varchar(20) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `address_admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `name_admin`, `username`, `password`, `telp_admin`, `email_admin`, `address_admin`) VALUES
(1, 'Shinta Nabilla E H S', '1', 'c4ca4238a0b923820dcc509a6f75849b', '+6281225078084', 'shinta.s@students.amikom.ac.id', 'Jl. Aster 1 No 338, Dero, Condongcatur, Kab. Sleman - Depok, DI Yogyakarta, ID 55282'),
(2, 'Paste Prosmana', '2', 'c81e728d9d4c2f636f067f89cc14862c', '081234098768', 'paste@gmail.com', 'Jl. Kaliurang, Yogyakarta'),
(3, 'Nibras', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '085456543456', 'nibras@gmail.com', 'Jl. Bantul, Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`id_category`, `name_category`) VALUES
(15, 'Hat'),
(16, 'Hoodie'),
(17, 'Crewneck'),
(19, 'Rajut/Cardigan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name_product` varchar(100) NOT NULL,
  `price_product` int(11) NOT NULL,
  `description_product` text NOT NULL,
  `image_product` varchar(100) NOT NULL,
  `status_product` tinyint(1) NOT NULL,
  `created_data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id_product`, `id_category`, `name_product`, `price_product`, `description_product`, `image_product`, `status_product`, `created_data`) VALUES
(5, 15, 'Hat 1492 Miles', 100000, '<p><strong>Hat 1492 Miles</strong></p>\r\n\r\n<p>Colour :Red</p>\r\n\r\n<p>Size : Adjustable</p>\r\n\r\n<p>Brand : 19M99</p>\r\n\r\n<p>Condition : 9/10, worth to buy &ndash; Good Condition</p>\r\n\r\n<p><strong>&ldquo;Note&rdquo;</strong></p>\r\n\r\n<p>Pembayaran via BCA / Shopee by req</p>\r\n\r\n<p>Limit stok karena bukan barang baru</p>\r\n\r\n<p><strong>Happy Today ! maybe you can buy our item</strong></p>\r\n', 'produk1641654874.jpg', 1, '2022-01-08 15:14:34'),
(6, 17, 'Crewneck Ucla', 120000, '<p><strong>Crewneck Ucla</strong></p>\r\n\r\n<p>Colour : Cream</p>\r\n\r\n<p>Size : Large Oversize P 61 x L 75</p>\r\n\r\n<p>Brand : Ucla</p>\r\n\r\n<p>Condition : no defect, worth to buy &ndash; Good Condition</p>\r\n\r\n<p><strong>&ldquo;Note&rdquo;</strong></p>\r\n\r\n<p>Pembayaran via BCA / Shopee by req</p>\r\n\r\n<p>Limit stok karena bukan barang baru</p>\r\n\r\n<p><strong>Happy Today ! maybe you can buy our item</strong></p>\r\n', 'produk1641654923.jpg', 1, '2022-01-08 15:15:23'),
(7, 17, 'Crewneck Baloon', 120000, '<p><strong>Crewneck Baloon</strong></p>\r\n\r\n<p>Colour : Navy</p>\r\n\r\n<p>Size : Large Oversize P 70 x Ld 64</p>\r\n\r\n<p>Brand : &ndash;</p>\r\n\r\n<p>Condition : no defect, worth to buy &ndash; Good Condition</p>\r\n\r\n<p><strong>&ldquo;Note&rdquo;</strong></p>\r\n\r\n<p>Pembayaran via BCA / Shopee by req</p>\r\n\r\n<p>Limit stok karena bukan barang baru</p>\r\n\r\n<p><strong>Happy Today ! maybe you can buy our item</strong></p>\r\n', 'produk1641654996.jpg', 1, '2022-01-08 15:16:36'),
(8, 19, 'Knit Slowb', 98000, '<p><strong>Knit Slowb</strong></p>\r\n\r\n<p>Colour : Navy</p>\r\n\r\n<p>Size : 128/56</p>\r\n\r\n<p>Brand : Slowb</p>\r\n\r\n<p>Condition : no defect, worth to buy &ndash; Good Condition</p>\r\n\r\n<p><strong>&ldquo;Note&rdquo;</strong></p>\r\n\r\n<p>Pembayaran via BCA / Shopee by req</p>\r\n\r\n<p>Limit stok karena bukan barang baru</p>\r\n\r\n<p><strong>Happy Today ! maybe you can buy our item</strong></p>\r\n', 'produk1641655055.jpg', 1, '2022-01-08 15:17:35'),
(9, 16, 'Hoodie Lazy semi baloon', 70000, '<p><strong>Hoodie Lazy semi Baloon</strong></p>\r\n\r\n<p>Colour : Navy</p>\r\n\r\n<p>Size : Large Oversize Baloon</p>\r\n\r\n<p>Brand : &ndash;</p>\r\n\r\n<p>Condition : no defect, worth to buy &ndash; Good Condition</p>\r\n\r\n<p><strong>&ldquo;Note&rdquo;</strong></p>\r\n\r\n<p>Pembayaran via BCA / Shopee by req</p>\r\n\r\n<p>Limit stok karena bukan barang baru</p>\r\n\r\n<p><strong>Happy Today ! maybe you can buy our item</strong></p>\r\n', 'produk1641655132.jpg', 1, '2022-01-08 15:18:52'),
(10, 16, 'Zip Hoodie Oioi', 89000, '<p><strong>Zip Hoodie oioi</strong></p>\r\n\r\n<p>Colour : Grey</p>\r\n\r\n<p>Size : XL oversize</p>\r\n\r\n<p>Brand : oioi</p>\r\n\r\n<p>Condition : no defect, worth to buy &ndash; Good Condition</p>\r\n\r\n<p><strong>&ldquo;Note&rdquo;</strong></p>\r\n\r\n<p>Pembayaran via BCA / Shopee by req</p>\r\n\r\n<p>Limit stok karena bukan barang baru</p>\r\n\r\n<p><strong>Happy Today ! maybe you can buy our item</strong></p>\r\n', 'produk1641658437.jpg', 1, '2022-01-08 16:13:57'),
(11, 19, 'Knit Spario', 89000, '<p><strong>Knit Spario gemoy (Rajut)</strong></p>\r\n\r\n<p>Colour : Nude</p>\r\n\r\n<p>Size : 124/62</p>\r\n\r\n<p>Brand : Spario</p>\r\n\r\n<p>Condition : no defect, worth to buy</p>\r\n\r\n<p><strong>&ldquo;Note&rdquo;</strong></p>\r\n\r\n<p>Pembayaran via BCA / Shopee by req</p>\r\n\r\n<p>Limit stok karena bukan barang baru</p>\r\n\r\n<p><strong>Happy Today ! maybe you can buy our item</strong></p>\r\n', 'produk1641658482.jpg', 1, '2022-01-08 16:14:42'),
(12, 15, 'Hat Dickies Blue', 150000, '<p><strong>Hat Dickies Blue</strong></p>\r\n\r\n<p>Colour : Blue</p>\r\n\r\n<p>Size : Adjustable</p>\r\n\r\n<p>Brand : Dieckies</p>\r\n\r\n<p>Condition : no defect, worth to buy &ndash; Good Condition</p>\r\n\r\n<p><strong>&ldquo;Note&rdquo;</strong></p>\r\n\r\n<p>Pembayaran via BCA / Shopee by req</p>\r\n\r\n<p>Limit stok karena bukan barang baru</p>\r\n\r\n<p><strong>Happy Today ! maybe you can buy our item</strong></p>\r\n', 'produk1641658554.jpg', 0, '2022-01-08 16:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`) VALUES
(1, 'guest', '084e0343a0486ff05530df6c705c8bb4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
