-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2023 at 09:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotikfasilkom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin1', 'password1'),
('admin2', 'password2'),
('admin3', 'password3'),
('admin4', 'password4');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `tingkat_member` varchar(50) DEFAULT NULL,
  `diskon` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `tingkat_member`, `diskon`) VALUES
(1, 'Bronze', 0.00),
(2, 'Silver', 5.00),
(3, 'Gold', 10.00),
(4, 'Bronze', 0.00),
(5, 'Silver', 5.00),
(6, 'Gold', 10.00),
(7, 'Bronze', 0.00),
(8, 'Silver', 5.00),
(9, 'Gold', 10.00),
(10, 'Bronze', 0.00),
(11, 'Silver', 5.00),
(12, 'Gold', 10.00),
(13, 'Bronze', 0.00),
(14, 'Silver', 5.00),
(15, 'Gold', 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `harga`) VALUES
(1, 'Paracetamol', 10.50),
(2, 'Amoxicillin', 15.75),
(3, 'Omeprazole', 20.25),
(4, 'Aspirin', 8.95),
(5, 'Loratadine', 12.00),
(6, 'Cetirizine', 9.50),
(7, 'Ibuprofen', 7.25),
(8, 'Simvastatin', 18.60),
(9, 'Metformin', 13.75),
(10, 'Glibenclamide', 11.80),
(11, 'Ranitidine', 9.95),
(12, 'Amlodipine', 16.20),
(13, 'Losartan', 14.50),
(14, 'Captopril', 10.75),
(15, 'Metoprolol', 12.35),
(16, 'Diazepam', 7.90),
(17, 'Alprazolam', 9.25),
(18, 'Tramadol', 15.40),
(19, 'Morphine', 25.00),
(20, 'Insulin', 30.50),
(21, 'Levothyroxine', 17.80),
(22, 'Warfarin', 11.25),
(23, 'Digoxin', 8.65),
(24, 'Propranolol', 14.75),
(25, 'Ciprofloxacin', 19.90);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tingkat_member` varchar(50) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `nama_obat` varchar(100) DEFAULT NULL,
  `jml_jual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tingkat_member`, `tgl_transaksi`, `nama_obat`, `jml_jual`) VALUES
(1, 'Bronze', '2023-06-01', 'Paracetamol', 5),
(2, 'Silver', '2023-06-02', 'Amoxicillin', 3),
(3, 'Gold', '2023-06-03', 'Omeprazole', 2),
(4, 'Bronze', '2023-06-04', 'Aspirin', 4),
(5, 'Silver', '2023-06-05', 'Loratadine', 1),
(6, 'Gold', '2023-06-06', 'Cetirizine', 2),
(7, 'Bronze', '2023-06-07', 'Ibuprofen', 3),
(8, 'Silver', '2023-06-08', 'Simvastatin', 2),
(9, 'Gold', '2023-06-09', 'Metformin', 5),
(10, 'Bronze', '2023-06-10', 'Glibenclamide', 2),
(11, 'Silver', '2023-06-11', 'Ranitidine', 3),
(12, 'Gold', '2023-06-12', 'Amlodipine', 1),
(13, 'Bronze', '2023-06-13', 'Losartan', 4),
(14, 'Silver', '2023-06-14', 'Captopril', 2),
(15, 'Gold', '2023-06-15', 'Metoprolol', 3),
(16, 'Bronze', '2023-06-16', 'Diazepam', 2),
(17, 'Silver', '2023-06-17', 'Alprazolam', 1),
(18, 'Gold', '2023-06-18', 'Tramadol', 4),
(19, 'Bronze', '2023-06-19', 'Morphine', 2),
(20, 'Silver', '2023-06-20', 'Insulin', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
