-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 01:43 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `12rpl2_saya`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `masyarakt_view`
-- (See below for the actual view)
--
CREATE TABLE `masyarakt_view` (
`nik` char(16)
,`nama` varchar(35)
,`tgl_pengaduan` date
,`isi_laporan` text
,`foto` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pengaduan_view`
-- (See below for the actual view)
--
CREATE TABLE `pengaduan_view` (
`nik` char(16)
,`nama` varchar(35)
,`username` varchar(25)
,`password` varchar(32)
,`telp` varchar(13)
,`id_pengaduan` int(11)
,`tgl_pengaduan` date
,`isi_laporan` text
,`foto` varchar(255)
,`status` enum('0','proses','selesai')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pengaduan_view2`
-- (See below for the actual view)
--
CREATE TABLE `pengaduan_view2` (
`tgl_pengaduan` date
,`nik` char(16)
,`nama` varchar(35)
,`isi_laporan` text
,`foto` varchar(255)
,`status` enum('0','proses','selesai')
);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_masyarakat`
--

CREATE TABLE `tabel_masyarakat` (
  `nik` char(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_masyarakat`
--

INSERT INTO `tabel_masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('123', 'ASEP', 'ASEP', 'ASEP', '836240932'),
('32110003444', 'Defa Fatmi Malihah', 'Defa', 'Defa', '089515009718'),
('36429', 'jdfkjs', 'jsdhsk', '123', '8487'),
('47832', 'jdsk', 'JDKSJ', '12', '8479'),
('74382', 'dadan2', 'dadan', 'JD', '87943');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pengaduan`
--

CREATE TABLE `tabel_pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_pengaduan`
--

INSERT INTO `tabel_pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(36, '2021-03-01', '32110003444', 'selamat pagi ini percobaan', 'FOTO2.JPG', 'selesai'),
(37, '2021-03-18', '32110003444', 'haghxvskjshsx', 'FOTO3.JPEG', 'proses'),
(38, '2021-03-18', '11231', 'hari kamis', 'Welcome Scan.jpg', 'selesai'),
(43, '2023-10-05', '123', 'BANJIR', 'FOTO1.JPG', 'proses'),
(48, '0000-00-00', '123', 'gfgf', '653932a161584.jpeg', 'proses'),
(49, '0000-00-00', '123', 'banjir lagi', '6539338543200.jpeg', '0'),
(50, '0000-00-00', '&lt;H1&gt;HAHAHA', 'SHDLSA', '6539c4112e1f7.jpeg', '0'),
(51, '0000-00-00', '123', 'banir', '653f057c344d0.jpeg', '0'),
(52, '0000-00-00', '123', 'coba saja', '65404ca240652.jpeg', '0');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tabel_pengaduan_view`
-- (See below for the actual view)
--
CREATE TABLE `tabel_pengaduan_view` (
`nik` char(16)
,`nama` varchar(35)
,`username` varchar(25)
,`password` varchar(32)
,`telp` varchar(13)
,`id_pengaduan` int(11)
,`tgl_pengaduan` date
,`isi_laporan` text
,`foto` varchar(255)
,`status` enum('0','proses','selesai')
);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_petugas`
--

CREATE TABLE `tabel_petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_petugas`
--

INSERT INTO `tabel_petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(6, 'Defa Fatmi Malihah', 'defa', 'admin', '089515009718', 'admin'),
(7, 'firda nuraeni', 'firda', 'petugas', '089987789442', 'petugas'),
(9, 'lutfi aulia hasanah', 'lutfi', 'admin', '0899886555555', 'admin'),
(11, 'heri setiawan', 'heri', 'petugas', '08123454321', 'petugas'),
(17, 'muhamad imam', 'imam', 'imam', '098097289177', 'petugas'),
(19, 'j', 'j', 'j', '8', 'admin'),
(20, '', '', '', '', ''),
(21, 'sjadasj,', 'snma', 'mxcm', 'nm,c', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tanggapan`
--

CREATE TABLE `tabel_tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_tanggapan`
--

INSERT INTO `tabel_tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(19, 36, '2021-03-18', 'sygsui', 7),
(20, 38, '2021-03-18', 'haii', 7),
(21, 39, '2021-03-21', 'womdl', 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tabel_tanggapan_view`
-- (See below for the actual view)
--
CREATE TABLE `tabel_tanggapan_view` (
`id_tanggapan` int(11)
,`tgl_pengaduan` date
,`nik` char(16)
,`isi_laporan` text
,`foto` varchar(255)
,`status` enum('0','proses','selesai')
,`tgl_tanggapan` date
,`nama_petugas` varchar(35)
);

-- --------------------------------------------------------

--
-- Structure for view `masyarakt_view`
--
DROP TABLE IF EXISTS `masyarakt_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `masyarakt_view`  AS SELECT `tabel_masyarakat`.`nik` AS `nik`, `tabel_masyarakat`.`nama` AS `nama`, `tabel_pengaduan`.`tgl_pengaduan` AS `tgl_pengaduan`, `tabel_pengaduan`.`isi_laporan` AS `isi_laporan`, `tabel_pengaduan`.`foto` AS `foto` FROM (`tabel_masyarakat` join `tabel_pengaduan` on(`tabel_masyarakat`.`nik` = `tabel_pengaduan`.`nik`)) ;

-- --------------------------------------------------------

--
-- Structure for view `pengaduan_view`
--
DROP TABLE IF EXISTS `pengaduan_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pengaduan_view`  AS SELECT `tabel_masyarakat`.`nik` AS `nik`, `tabel_masyarakat`.`nama` AS `nama`, `tabel_masyarakat`.`username` AS `username`, `tabel_masyarakat`.`password` AS `password`, `tabel_masyarakat`.`telp` AS `telp`, `tabel_pengaduan`.`id_pengaduan` AS `id_pengaduan`, `tabel_pengaduan`.`tgl_pengaduan` AS `tgl_pengaduan`, `tabel_pengaduan`.`isi_laporan` AS `isi_laporan`, `tabel_pengaduan`.`foto` AS `foto`, `tabel_pengaduan`.`status` AS `status` FROM (`tabel_masyarakat` join `tabel_pengaduan` on(`tabel_masyarakat`.`nik` = `tabel_pengaduan`.`nik`)) ;

-- --------------------------------------------------------

--
-- Structure for view `pengaduan_view2`
--
DROP TABLE IF EXISTS `pengaduan_view2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pengaduan_view2`  AS SELECT `tabel_pengaduan`.`tgl_pengaduan` AS `tgl_pengaduan`, `tabel_masyarakat`.`nik` AS `nik`, `tabel_masyarakat`.`nama` AS `nama`, `tabel_pengaduan`.`isi_laporan` AS `isi_laporan`, `tabel_pengaduan`.`foto` AS `foto`, `tabel_pengaduan`.`status` AS `status` FROM (`tabel_pengaduan` join `tabel_masyarakat` on(`tabel_pengaduan`.`nik` = `tabel_masyarakat`.`nik`)) ;

-- --------------------------------------------------------

--
-- Structure for view `tabel_pengaduan_view`
--
DROP TABLE IF EXISTS `tabel_pengaduan_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabel_pengaduan_view`  AS SELECT `mas`.`nik` AS `nik`, `mas`.`nama` AS `nama`, `mas`.`username` AS `username`, `mas`.`password` AS `password`, `mas`.`telp` AS `telp`, `peng`.`id_pengaduan` AS `id_pengaduan`, `peng`.`tgl_pengaduan` AS `tgl_pengaduan`, `peng`.`isi_laporan` AS `isi_laporan`, `peng`.`foto` AS `foto`, `peng`.`status` AS `status` FROM (`tabel_masyarakat` `mas` join `tabel_pengaduan` `peng`) WHERE `mas`.`nik` = `peng`.`nik` ;

-- --------------------------------------------------------

--
-- Structure for view `tabel_tanggapan_view`
--
DROP TABLE IF EXISTS `tabel_tanggapan_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabel_tanggapan_view`  AS SELECT `tang`.`id_tanggapan` AS `id_tanggapan`, `peng`.`tgl_pengaduan` AS `tgl_pengaduan`, `peng`.`nik` AS `nik`, `peng`.`isi_laporan` AS `isi_laporan`, `peng`.`foto` AS `foto`, `peng`.`status` AS `status`, `tang`.`tgl_tanggapan` AS `tgl_tanggapan`, `pet`.`nama_petugas` AS `nama_petugas` FROM ((`tabel_tanggapan` `tang` join `tabel_petugas` `pet`) join `tabel_pengaduan` `peng`) WHERE `pet`.`id_petugas` = `tang`.`id_petugas` AND `peng`.`id_pengaduan` = `tang`.`id_pengaduan` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_masyarakat`
--
ALTER TABLE `tabel_masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tabel_pengaduan`
--
ALTER TABLE `tabel_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `tabel_petugas`
--
ALTER TABLE `tabel_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tabel_tanggapan`
--
ALTER TABLE `tabel_tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pengaduan`
--
ALTER TABLE `tabel_pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tabel_petugas`
--
ALTER TABLE `tabel_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tabel_tanggapan`
--
ALTER TABLE `tabel_tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
