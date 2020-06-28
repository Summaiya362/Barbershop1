-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Jun 2020 pada 13.24
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barber`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pangkas`
--

CREATE TABLE `tbl_pangkas` (
  `id_pangkas` int(11) NOT NULL,
  `nama_pangkas` varchar(50) NOT NULL,
  `id_usia` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pangkas`
--

INSERT INTO `tbl_pangkas` (`id_pangkas`, `nama_pangkas`, `id_usia`, `harga`) VALUES
(1, 'Rambut', 1, 15000),
(2, 'Rambut', 2, 20000),
(3, 'Jenggot dan Kumis', 2, 10000),
(4, 'Cat Rambut', 2, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(10) NOT NULL,
  `katasandi` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id_pengguna`, `nama_pengguna`, `katasandi`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id_register` int(11) NOT NULL,
  `nama_register` varchar(50) NOT NULL,
  `date_register` date NOT NULL,
  `time_register` time NOT NULL,
  `id_pangkas` int(11) NOT NULL,
  `status` enum('N','Y') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_register`
--

INSERT INTO `tbl_register` (`id_register`, `nama_register`, `date_register`, `time_register`, `id_pangkas`, `status`) VALUES
(31, 'latif', '2020-05-20', '11:30:00', 2, 'Y'),
(32, 'lepay', '2020-05-21', '13:00:00', 2, 'Y'),
(33, 'samsul', '2020-05-22', '12:30:00', 1, 'Y'),
(34, 'coba', '2020-05-24', '13:30:00', 3, 'Y'),
(40, 'tesy', '2020-05-20', '12:00:00', 3, 'Y'),
(41, 'coba lagi', '2020-05-21', '13:30:00', 2, 'Y'),
(42, 'coba', '2020-05-21', '10:30:00', 4, 'Y'),
(43, 'coba dah', '2020-05-28', '12:00:00', 2, 'Y'),
(44, 'as', '2020-05-22', '14:00:00', 2, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_usia`
--

CREATE TABLE `tbl_usia` (
  `id_usia` int(11) NOT NULL,
  `nama_usia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_usia`
--

INSERT INTO `tbl_usia` (`id_usia`, `nama_usia`) VALUES
(1, 'Anak-anak'),
(2, 'Dewasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_waktu`
--

CREATE TABLE `tbl_waktu` (
  `id_waktu` int(11) NOT NULL,
  `nama_waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_waktu`
--

INSERT INTO `tbl_waktu` (`id_waktu`, `nama_waktu`) VALUES
(1, '09:00:00'),
(2, '09:30:00'),
(3, '10:00:00'),
(4, '10:30:00'),
(5, '11:00:00'),
(6, '11:30:00'),
(7, '12:00:00'),
(8, '12:30:00'),
(9, '13:00:00'),
(10, '13:30:00'),
(11, '14:00:00'),
(12, '14:30:00'),
(13, '15:00:00'),
(14, '15:30:00'),
(15, '16:00:00'),
(16, '16:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pangkas`
--
ALTER TABLE `tbl_pangkas`
  ADD PRIMARY KEY (`id_pangkas`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id_register`);

--
-- Indexes for table `tbl_usia`
--
ALTER TABLE `tbl_usia`
  ADD PRIMARY KEY (`id_usia`);

--
-- Indexes for table `tbl_waktu`
--
ALTER TABLE `tbl_waktu`
  ADD PRIMARY KEY (`id_waktu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pangkas`
--
ALTER TABLE `tbl_pangkas`
  MODIFY `id_pangkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id_register` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `tbl_usia`
--
ALTER TABLE `tbl_usia`
  MODIFY `id_usia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_waktu`
--
ALTER TABLE `tbl_waktu`
  MODIFY `id_waktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
