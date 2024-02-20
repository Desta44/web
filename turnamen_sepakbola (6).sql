-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2024 pada 12.22
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turnamen_sepakbola`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `nama`, `komentar`) VALUES
(9, 'Agus', 'kmdekdfohsajaaaatewsohitery8w9tgvsdbfchfhd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_turnamen`
--

CREATE TABLE `daftar_turnamen` (
  `id` int(11) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `id_tur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar_turnamen`
--

INSERT INTO `daftar_turnamen` (`id`, `id_pendaftaran`, `id_tur`) VALUES
(18, 69173, 18),
(20, 69174, 18),
(21, 69175, 18),
(22, 69176, 18),
(23, 69177, 18),
(25, 69179, 18),
(27, 69180, 18),
(28, 69181, 18),
(29, 69182, 18),
(30, 69184, 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `id_tur` int(10) NOT NULL,
  `id_team` int(20) NOT NULL,
  `id_tim` int(20) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `id_tur`, `id_team`, `id_tim`, `tanggal`, `tempat`) VALUES
(1, 18, 69173, 69175, '2023-09-28', ' Lapang Jatiroke'),
(2, 18, 69174, 69177, '2023-09-12', 'Lapang CirawaMekar'),
(3, 18, 69176, 69179, '2023-09-17', 'Lapang CirawaMekar'),
(13, 18, 69182, 69180, '2024-02-20', ' Lapang Jatiroke'),
(14, 18, 69179, 69183, '2024-02-14', ' Lapang Jatiroke');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kampung`
--

CREATE TABLE `kampung` (
  `id_kampung` int(11) NOT NULL,
  `kampung` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kampung`
--

INSERT INTO `kampung` (`id_kampung`, `kampung`) VALUES
(1, 'Sasakseng'),
(2, 'CirawaTengah'),
(3, 'Cilimus'),
(4, 'Cibodas'),
(5, 'CirawaHilir'),
(6, 'Batununggul'),
(7, 'Balekambang'),
(8, 'Cibadak'),
(9, 'Cabearey'),
(10, 'Nyalindung'),
(11, 'Legoktalingkup');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `pendaftaran_turnamen`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `pendaftaran_turnamen` (
`id` int(11)
,`id_pendaftaran` int(10)
,`id_tur` int(10)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaptaran`
--

CREATE TABLE `pendaptaran` (
  `id_pendaftaran` int(10) NOT NULL,
  `nama_team` varchar(20) NOT NULL,
  `kampung` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaptaran`
--

INSERT INTO `pendaptaran` (`id_pendaftaran`, `nama_team`, `kampung`) VALUES
(69173, 'Junior Ones', 'CirawaHilir'),
(69174, 'Bali ', 'Sasakseng'),
(69175, 'Indonesia', 'Nyalindung'),
(69176, 'Persib Bandung', 'Cibodas'),
(69177, 'Cukurukuk fc', 'Balekambang'),
(69179, 'Desta Fc', 'Cibadak'),
(69180, 'Paesal United', 'Batununggul'),
(69181, 'Gapas united', 'Legoktalingkup'),
(69182, 'Durnay Fc', 'CirawaTengah'),
(69184, 'United Fc', 'Cilimus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `image` varchar(20) NOT NULL,
  `type_image` varchar(20) NOT NULL,
  `size_image` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_team` int(10) NOT NULL,
  `posisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id`, `image`, `type_image`, `size_image`, `nama`, `tanggal_lahir`, `id_team`, `posisi`) VALUES
(29, 'person_3.jpg', 'image/jpeg', 228890, 'Desta', '2014-01-25', 1, 'CB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `team`
--

CREATE TABLE `team` (
  `id` int(10) NOT NULL,
  `image` varchar(20) NOT NULL,
  `type_image` varchar(20) NOT NULL,
  `size_image` int(20) NOT NULL,
  `nama_team` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `tahun_berdiri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `team`
--

INSERT INTO `team` (`id`, `image`, `type_image`, `size_image`, `nama_team`, `alamat`, `tahun_berdiri`) VALUES
(1, '1.png', 'image/png', 72793, 'Gapas FC', 'KP.Cirawa Tengah', '2014-06-28'),
(2, '6.png', 'image/png', 0, 'Lalay Fc', 'KP.Cibodas', '2023-09-24'),
(3, '7.png', 'image/png', 0, 'Nunggul United', 'KP.Batununggul', '2018-06-06'),
(9, '9.png', 'image/png', 72793, 'Senti FC', 'KP.Jaya', '2013-11-09'),
(10, 'logo_2.png', 'image/png', 21616, 'Cibadak Unity', 'KP.Cibadak', '2023-09-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `turnamen`
--

CREATE TABLE `turnamen` (
  `id_tur` int(10) NOT NULL,
  `nama_turnamen` varchar(20) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `turnamen`
--

INSERT INTO `turnamen` (`id_tur`, `nama_turnamen`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(2, 'U20', '2023-08-28', '2023-09-04'),
(3, 'U24', '2023-08-28', '2023-09-04'),
(18, 'U17', '2023-09-26', '2023-09-30'),
(19, 'U10', '2024-02-13', '2024-02-14'),
(20, 'U12', '2023-06-20', '2024-02-20');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vpeserta`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vpeserta` (
`id` int(11)
,`image` varchar(20)
,`type_image` varchar(20)
,`size_image` int(10)
,`nama` varchar(20)
,`tanggal_lahir` date
,`id_team` int(10)
,`posisi` varchar(20)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `pendaftaran_turnamen`
--
DROP TABLE IF EXISTS `pendaftaran_turnamen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pendaftaran_turnamen`  AS SELECT `jadwal`.`id` AS `id`, `pendaptaran`.`id_pendaftaran` AS `id_pendaftaran`, `turnamen`.`id_tur` AS `id_tur` FROM ((`jadwal` join `pendaptaran` on(`jadwal`.`id` = `pendaptaran`.`id_pendaftaran`)) join `turnamen` on(`jadwal`.`id` = `turnamen`.`id_tur`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vpeserta`
--
DROP TABLE IF EXISTS `vpeserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vpeserta`  AS SELECT `peserta`.`id` AS `id`, `peserta`.`image` AS `image`, `peserta`.`type_image` AS `type_image`, `peserta`.`size_image` AS `size_image`, `peserta`.`nama` AS `nama`, `peserta`.`tanggal_lahir` AS `tanggal_lahir`, `peserta`.`id_team` AS `id_team`, `peserta`.`posisi` AS `posisi` FROM `peserta` WHERE `peserta`.`id_team` = 11  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `daftar_turnamen`
--
ALTER TABLE `daftar_turnamen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kampung`
--
ALTER TABLE `kampung`
  ADD PRIMARY KEY (`id_kampung`);

--
-- Indeks untuk tabel `pendaptaran`
--
ALTER TABLE `pendaptaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `turnamen`
--
ALTER TABLE `turnamen`
  ADD PRIMARY KEY (`id_tur`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `daftar_turnamen`
--
ALTER TABLE `daftar_turnamen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kampung`
--
ALTER TABLE `kampung`
  MODIFY `id_kampung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pendaptaran`
--
ALTER TABLE `pendaptaran`
  MODIFY `id_pendaftaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69185;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=878893;

--
-- AUTO_INCREMENT untuk tabel `turnamen`
--
ALTER TABLE `turnamen`
  MODIFY `id_tur` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
