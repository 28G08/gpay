-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2022 at 03:31 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gpay`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` int(10) NOT NULL,
  `akses` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`nama`, `username`, `password`, `akses`) VALUES
('Admin 1', 'Admin_1', 123, 'ADMIN'),
('ADMIN UTAMA', 'A_utama', 123, 'ADMIN'),
('DLP', 'S_dlp', 12345, 'SEKTOR'),
('KAGAMINE LEN', 'M_len', 1234, 'MAHASISWA'),
('KAGAMINE RIN', 'M_rin', 1234, 'MAHASISWA'),
('KOPERASI MAHASISWA', 'S_kopma', 12345, 'SEKTOR');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `username` varchar(10) NOT NULL,
  `password` int(10) NOT NULL,
  `nominal` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`username`, `password`, `nominal`, `status`, `keterangan`) VALUES
('M_len', 1234, 20000, 'TRANSFER', 'KOPERASI MAHASISWA'),
('S_kopma', 12345, 20000, 'TRANSFER', 'KAGAMINE LEN'),
('M_len', 1234, 20000, 'TOP UP', '');

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `username` varchar(10) NOT NULL,
  `password` int(10) NOT NULL,
  `saldo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`username`, `password`, `saldo`) VALUES
('M_len', 1234, 70000),
('S_kopma', 12345, 20000),
('M_rin', 1234, 50000),
('nikma', 123, 10000),
('dlp', 123, 0),
('S_dlp', 12345, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`nama`,`username`,`password`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
