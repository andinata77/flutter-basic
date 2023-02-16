-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 04:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crud_flutter`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_note_app`
--

CREATE TABLE `tb_note_app` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_note_app`
--

INSERT INTO `tb_note_app` (`id`, `title`, `content`, `date`) VALUES
(3, 'Produk Baru', 'Produk baru ini adalah produk yang dirancang untuk menggantikan produk yang ada dengan biaya lebih rendah. Mengeluarkan produk baru dengan mengurangi biaya, dapat mengganti produk yang sudah ada pada lini produk, dengan menawarkan manfaat yang serupa dan kinerja dengan biaya yang lebih rendah', '2023-02-01'),
(4, 'Kontrak Sewa', 'Sewa menyewa adalah perjanjian di mana pihak yang satu mengikatkan dirinya untuk memberi suatu barang ke pihak lain, selama suatu waktu tertentu dengan pembayaran yang disanggupi pihak tersebut.', '2023-02-08'),
(9, 'Produk By Pass', 'Produk By Pass adalah produk langsung dari merchandising yang telah di tanda tangani oleh executive direktur', '0000-00-00'),
(12, 'Nama nama Karyawan', 'Prastoto', '0000-00-00'),
(13, 'Nama nama Karyawan', 'Prastotoqww', '0000-00-00'),
(14, 'fffgghhhh', 'he is eegg😚😚😚😚&&&45', '0000-00-00'),
(15, 'gggg', 'hhgg', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_note_app`
--
ALTER TABLE `tb_note_app`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_note_app`
--
ALTER TABLE `tb_note_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
