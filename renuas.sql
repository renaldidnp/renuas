-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jul 2024 pada 08.53
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renuas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `evaluasikinerja`
--

CREATE TABLE `evaluasikinerja` (
  `id` int(11) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `tanggal_evaluasi` date NOT NULL,
  `hasil_evaluasi` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `evaluasikinerja`
--

INSERT INTO `evaluasikinerja` (`id`, `nama_karyawan`, `tanggal_evaluasi`, `hasil_evaluasi`, `keterangan`) VALUES
(1, '', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `gaji` decimal(10,2) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `alamat`, `tanggal_lahir`, `gaji`, `jabatan`) VALUES
(1, 'Renaldott', 'Jl. Contoh No. 123', '1990-05-15', 5000000.00, 'Kuli Bangunan'),
(2, 'Aurora Maharani', 'Jl. Diponegoro No 76', '2005-07-23', 9000000.00, 'CEO'),
(3, 'Sumanto', 'Jl. Mastirp No 65', '2006-07-04', 1000000.00, 'Karyawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekamjejak`
--

CREATE TABLE `rekamjejak` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal` date NOT NULL DEFAULT current_timestamp(),
  `kegiatan` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rekamjejak`
--

INSERT INTO `rekamjejak` (`id`, `nama`, `tanggal`, `kegiatan`, `keterangan`) VALUES
(1, 'John Doe', '2024-07-10', 'Pelatihan Manajemen Konflik', 'John Doe mengikuti pelatihan manajemen konflik selama 2 hari di ruang konferensi utama.'),
(2, 'wawd', '2024-07-17', 'wdad', 'wdaww');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'renaldi', 'renaldi@admin.com', '$2y$10$3xpb2Kij9lCGt90upcAzFegQH1y99SUW7qrGt6QPgl2QA7kzTS4JO'),
(2, 'admin', 'admin@admin.com', '$2y$10$EGIhq5xj4KAqz6vj1ZTLYeDbn8pY4w58DXldbcw0UplR6Gsj2XaLi'),
(3, 'renaldiganteng', 'renaldi@renaldi.com', '$2y$10$k88Faygwtc2y9BIYXJSzOO27vkHR.pimtPw7B6NqsGUc2P8J.fWpu'),
(4, 'aurora', 'nila@cantik.com', '$2y$10$Jn2.LgHq63Y.OPT6Q87Nq.q5.R1zF0CmNTcZvtJm9WeuK8IND73fO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `evaluasikinerja`
--
ALTER TABLE `evaluasikinerja`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekamjejak`
--
ALTER TABLE `rekamjejak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `evaluasikinerja`
--
ALTER TABLE `evaluasikinerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rekamjejak`
--
ALTER TABLE `rekamjejak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
