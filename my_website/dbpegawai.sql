-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Apr 2021 pada 19.52
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id`, `nama`) VALUES
(1, 'HRD'),
(2, 'Keuangan'),
(3, 'Operasional'),
(4, 'Marketing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` enum('admin','manager','staff') NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `fullname`, `username`, `password`, `role`, `foto`) VALUES
(1, 'Lovina Aulia', 'lovina', '96ff39d3552735740554b3d719c7b63397f0e027', 'admin', 'lovina.jpg'),
(2, 'Muhammad Azzam', 'azzam', '9bb2f1107f700de227250359e95031043c7ed3f1', 'manager', 'azzam.jpg'),
(3, 'Yusuf Fadilah', 'yusuf', '63e1f2321d7e42541e399adbeb5bdd010a080b25', 'staff', 'yusuf.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `agama` enum('Islam','Kristen Katholik','Hindu','Budha','Kristen Protestan','Khonghucu') NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `email`, `agama`, `iddivisi`, `foto`) VALUES
(8, '01101', 'Amalia Sarah', 'amaliasarah01@gmail.com', 'Kristen Katholik', 2, 'sarah.jpg'),
(9, '01102', 'Ficri Hanip', 'ficrihanip02@gmail.com', 'Islam', 3, 'ficri.jpg'),
(10, '01103', 'Yusuf Fadillah', 'yusuffadillah03@gmail.com', 'Islam', 4, 'yusuf.jpg'),
(13, '01104', 'Lovina Aulia', 'lovinaaulia04@gmail.com', 'Islam', 1, 'lovina.jpg'),
(14, '01105', 'Michael', 'michael05@gmail.com', 'Kristen Katholik', 4, ''),
(15, '01106', 'Jilan Finian Kilani', 'jilanfiniankilani06@gmail.com', 'Islam', 3, ''),
(16, '01107', 'Muhammad Shayid Vedawyne', 'shayidvedawyne07@gmail.com', 'Islam', 4, ''),
(17, '01108', 'Ade Fikri Ramadhan', 'adefikriramadhan08@gmail.com', 'Islam', 4, 'ade_fikri.jpg'),
(18, '01109', 'Rizki Maulana', 'rizkimaulana09@gmail.com', 'Islam', 2, ''),
(19, '01110', 'Muhammad Rasya Hakim', 'rasyahakim10@gmail.com', 'Islam', 4, ''),
(20, '01111', 'Muhammad Azzam Nur Alwi', 'azzamnralwmansyur@gmail.com', 'Islam', 1, 'azzam_nur.jpg'),
(21, '01112', 'Amelia Putri', 'putriamelia12@gmail.com', 'Kristen Protestan', 4, 'amel_putri.jpg'),
(27, '01113', 'Mubdi Hariyanto', 'mubdihariyanto13@gmail.com', 'Islam', 3, 'anto.jpg'),
(28, '01114', 'Muhammad Fajar Ramadhani', 'fajarramadhani14@gmail.com', 'Islam', 3, 'fajar.jpg'),
(29, '01115', 'Abdul Fattah Ismail', 'abdulfattahismail@gmail.com', 'Islam', 4, 'faqih.jpg'),
(31, '01116', 'Jaysen', 'Jaysen16@gmail.com', 'Khonghucu', 4, ''),
(32, '01117', 'Jeremy', 'jeremy17@gmail.com', 'Budha', 4, ''),
(33, '01118', 'Fathiah Al-Habsyi', 'fathiahalhabsyi18@gmail.com', 'Islam', 4, ''),
(34, '01119', 'Daffa Zuhair', 'daffazuhair19@gmail.com', 'Islam', 4, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
