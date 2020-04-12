-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2020 at 01:23 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suratmasuk`
--

CREATE TABLE `tbl_suratmasuk` (
  `id_surat` int(4) NOT NULL,
  `nomor_surat` varchar(30) NOT NULL,
  `asal_surat` varchar(50) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `tanggal_surat` date NOT NULL,
  `perihal` varchar(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `ditujukan` enum('bdg_plip','bdg_pkp','bdg_tik','bdg_tkpbe','bdg_ps','subbdg_uk','subbdg_k','subbdg_pp') NOT NULL,
  `file_suratmasuk` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nik` int(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `role` enum('admin','pegawai','','') NOT NULL,
  `ruangan` enum('bdg_plip','bdg_pkp','bdg_tik','bdg_tkpbe','bdg_ps','subbdg_uk','subbdg_k','subbdg_pp') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nik`, `nama`, `role`, `ruangan`) VALUES
(1, 'admin', 'admin', 1111111111, 'Akbar Rinaldy', 'admin', 'subbdg_uk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_suratmasuk`
--
ALTER TABLE `tbl_suratmasuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
