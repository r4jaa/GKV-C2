-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Mar 2025 pada 14.04
-- Versi server: 8.0.34
-- Versi PHP: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activitystatus`
--

CREATE TABLE `activitystatus` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activitystatus`
--

INSERT INTO `activitystatus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Input', '2025-02-09 07:44:40.549', '2025-02-09 07:44:40.549'),
(2, 'Arsip', '2025-02-09 07:44:40.549', '2025-02-09 07:44:40.549'),
(3, 'Verifikasi', '2025-02-09 07:44:40.549', '2025-02-09 07:44:40.549'),
(4, 'Pemusnahan', '2025-02-09 07:44:40.549', '2025-02-09 07:44:40.549');

-- --------------------------------------------------------

--
-- Struktur dari tabel `approvalstatus`
--

CREATE TABLE `approvalstatus` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `approvalstatus`
--

INSERT INTO `approvalstatus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Disetujui', '2025-02-09 07:44:40.558', '2025-02-09 07:44:40.558'),
(2, 'Menunggu persetujuan', '2025-02-09 07:44:40.558', '2025-02-09 07:44:40.558'),
(3, 'Ditolak', '2025-02-09 07:44:40.558', '2025-02-09 07:44:40.558');

-- --------------------------------------------------------

--
-- Struktur dari tabel `archive`
--

CREATE TABLE `archive` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classification_id` int DEFAULT NULL,
  `document_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archive_status_id` int DEFAULT NULL,
  `archive_type_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `approval_status_id` int DEFAULT '2',
  `jumlah_arsip` int DEFAULT NULL,
  `media_arsip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_perkembangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_lampiran` int DEFAULT NULL,
  `media_lampiran` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_retensi_aktif` datetime(3) DEFAULT NULL,
  `final_retensi_inaktif` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL,
  `document_date` datetime(3) DEFAULT NULL,
  `nilai_guna` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kondisi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `archive`
--

INSERT INTO `archive` (`id`, `title`, `description`, `classification_id`, `document_path`, `archive_status_id`, `archive_type_id`, `location_id`, `user_id`, `unit_id`, `approval_status_id`, `jumlah_arsip`, `media_arsip`, `tingkat_perkembangan`, `jumlah_lampiran`, `media_lampiran`, `final_retensi_aktif`, `final_retensi_inaktif`, `created_at`, `updated_at`, `document_date`, `nilai_guna`, `kondisi`) VALUES
(1, 'Surat Keputusan', 'Arsip terkait keputusan rapat penting.', 3, '/documents/surat_keputusan.pdf', 3, 1, 2, 1, 3, 2, 10, 'Digital', 'Final', 2, 'PDF', '2025-02-09 17:54:20.000', '2025-02-09 17:54:20.000', '2025-02-09 17:54:20.000', '2025-03-04 17:00:00.937', '2025-02-09 17:54:20.000', NULL, NULL),
(2, 'Dokumen Kerjasama', 'Arsip kerjasama dengan pihak eksternal.', 2, '/documents/dokumen_kerjasama.pdf', 3, 2, 4, 1, 3, 2, 6, 'Fisik', 'Draft', 2, 'Hardcopy', '2025-02-09 17:54:20.000', '2025-02-09 17:54:20.000', '2025-02-09 17:54:20.000', '2025-03-04 17:00:00.937', '2025-02-09 17:54:20.000', NULL, NULL),
(3, 'Laporan Tahunan', 'Dokumen laporan tahunan perusahaan.', 2, '/documents/laporan_tahunan.pdf', 3, 1, 2, 1, 3, 2, 8, 'Digital', 'Final', 2, 'PDF', '2025-02-09 17:54:20.000', '2025-02-09 17:54:20.000', '2025-02-09 17:54:20.000', '2025-03-04 17:00:00.937', '2025-02-09 17:54:20.000', NULL, NULL),
(4, 'jbkhj', 'kjlklhkjh', 1, '', 4, NULL, 1, 1, 1, 2, 2, 'Berkas', 'Pertinggal', 2, 'Buku', '2025-02-09 18:38:38.031', '2025-02-09 18:38:38.031', '2025-02-09 18:38:38.158', '2025-03-04 17:00:00.937', '2025-02-09 18:38:38.031', NULL, NULL),
(5, 'jhjkg', 'jkghm', 1, '', 3, NULL, 1, 1, 1, 2, 6, 'Buku', 'Pertinggal', 6, 'Buku', '2025-02-11 01:23:19.518', '2025-02-11 01:23:19.518', '2025-02-11 01:23:19.587', '2025-03-04 17:00:00.937', '2025-02-11 01:23:19.517', NULL, NULL),
(6, 'uih', 'sxcfvcd', 1, '', 3, NULL, 1, 1, 1, 2, 2, NULL, 'Baik', 2, NULL, '2025-02-16 15:01:00.346', '2025-02-16 15:01:00.346', '2025-02-16 15:01:00.394', '2025-03-04 17:00:00.937', '2025-02-16 15:01:00.346', NULL, NULL),
(7, 'asdasfv', 'sdvdfgbgd', 2, '', 3, NULL, 1, 1, 1, 2, 2, NULL, 'Rusak', 2, NULL, '2025-02-16 16:42:14.965', '2025-02-16 16:42:14.965', '2025-02-16 16:42:15.034', '2025-03-04 17:00:00.937', '2025-02-16 16:42:14.965', NULL, NULL),
(9, 'yayy', 'sdvdfgbgd', 2, '', 3, NULL, 1, 1, 1, 1, 2, NULL, 'Rusak', 2, NULL, '2025-02-16 16:45:43.177', '2025-02-16 16:45:43.177', '2025-02-16 16:45:43.210', '2025-03-04 17:00:00.937', '2025-02-16 16:45:43.177', NULL, NULL),
(11, 'test', 'sdvdfgbgd', 1, '', 3, NULL, 1, 1, 1, 1, 2, NULL, 'Tembusan', 2, NULL, '2025-02-17 02:01:07.885', '2025-02-17 02:01:07.885', '2025-02-17 02:01:07.966', '2025-03-04 17:00:00.937', '2025-02-17 02:01:07.885', NULL, NULL),
(12, 'aaaa', 'aaaa', 2, '', 3, NULL, 1, 1, 1, 2, 1, NULL, 'Tembusan', 1, NULL, '2025-02-17 02:13:19.477', '2025-02-17 02:13:19.477', '2025-02-17 02:13:19.564', '2025-03-04 17:00:00.937', '2025-02-17 02:13:19.477', NULL, NULL),
(13, 'aaab', 'aaaa', 2, '', 3, NULL, 1, 1, 1, 2, 1, NULL, 'Tembusan', 1, NULL, '2025-02-17 02:13:54.460', '2025-02-17 02:13:54.460', '2025-02-17 02:13:54.525', '2025-03-04 17:00:00.937', '2025-02-17 02:13:54.460', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `archivedisposal`
--

CREATE TABLE `archivedisposal` (
  `id` int NOT NULL,
  `archive_id` int NOT NULL,
  `submission_date` datetime(3) NOT NULL,
  `approval_status_id` int NOT NULL,
  `approved_by` int NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `archivefiling`
--

CREATE TABLE `archivefiling` (
  `id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `classification_id` int DEFAULT NULL,
  `document_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archive_status_id` int DEFAULT NULL,
  `archive_type_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `approval_status_id` int DEFAULT NULL,
  `jumlah_arsip` int DEFAULT NULL,
  `media_arsip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_perkembangan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kondisi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_lampiran` int DEFAULT NULL,
  `media_lampiran` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_date` datetime(3) DEFAULT NULL,
  `final_retensi_aktif` datetime(3) DEFAULT NULL,
  `final_retensi_inaktif` datetime(3) DEFAULT NULL,
  `nilai_guna` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `archivelog`
--

CREATE TABLE `archivelog` (
  `id` int NOT NULL,
  `archive_id` int NOT NULL,
  `user_id` int NOT NULL,
  `activity_status_id` int NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `archivelog`
--

INSERT INTO `archivelog` (`id`, `archive_id`, `user_id`, `activity_status_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 1, 'Pengguna mengirimkan usulan arsip baru', '2025-02-16 16:45:43.217', '2025-02-16 16:45:43.217'),
(2, 9, 1, 1, 'Verifikator menyetujui usulan arsip baru', '2025-02-16 17:49:16.270', '2025-02-16 17:49:16.270'),
(3, 11, 1, 1, 'Pengguna mengirimkan usulan arsip baru', '2025-02-17 02:01:08.002', '2025-02-17 02:01:08.002'),
(4, 11, 1, 1, 'Verifikator menyetujui usulan arsip baru', '2025-02-17 02:02:56.603', '2025-02-17 02:02:56.603'),
(5, 12, 1, 1, 'Pengguna mengirimkan usulan arsip baru', '2025-02-17 02:13:19.581', '2025-02-17 02:13:19.581'),
(6, 13, 1, 1, 'Pengguna mengirimkan usulan arsip baru', '2025-02-17 02:13:54.539', '2025-02-17 02:13:54.539');

-- --------------------------------------------------------

--
-- Struktur dari tabel `archivemutation`
--

CREATE TABLE `archivemutation` (
  `id` int NOT NULL,
  `archive_id` int NOT NULL,
  `user_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `new_unit_id` int DEFAULT NULL,
  `approvalstatus` int NOT NULL DEFAULT '2',
  `berita_acara_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_location_id` int DEFAULT NULL,
  `old_location_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `archivestatus`
--

CREATE TABLE `archivestatus` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `archivestatus`
--

INSERT INTO `archivestatus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aktif', '2025-02-09 07:44:40.545', '2025-02-09 07:44:40.545'),
(2, 'Inaktif', '2025-02-09 07:44:40.545', '2025-02-09 07:44:40.545'),
(3, 'Statis', '2025-02-09 07:44:40.545', '2025-02-09 07:44:40.545'),
(4, 'Musnah', '2025-02-09 07:44:40.545', '2025-02-09 07:44:40.545');

-- --------------------------------------------------------

--
-- Struktur dari tabel `archivetype`
--

CREATE TABLE `archivetype` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `archivetype`
--

INSERT INTO `archivetype` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Substansif', '2025-02-09 07:44:40.566', '2025-02-09 07:44:40.566'),
(2, 'Fasilitatif', '2025-02-09 07:44:40.566', '2025-02-09 07:44:40.566');

-- --------------------------------------------------------

--
-- Struktur dari tabel `classification`
--

CREATE TABLE `classification` (
  `id` int NOT NULL,
  `classification_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retention_active` int NOT NULL,
  `retention_inactive` int NOT NULL,
  `retention_disposition_id` int NOT NULL,
  `security_classification_id` int NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `classification`
--

INSERT INTO `classification` (`id`, `classification_code`, `description`, `retention_active`, `retention_inactive`, `retention_disposition_id`, `security_classification_id`, `created_at`, `updated_at`) VALUES
(1, 'KU.01.01', 'Deskripsi arsip 1', 2, 2, 2, 2, '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000'),
(2, 'KU.01.02', 'Deskripsi arsip 2', 2, 2, 2, 2, '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000'),
(3, 'KU.01.03', 'Deskripsi arsip 3', 2, 2, 2, 2, '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `location`
--

CREATE TABLE `location` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rack_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` int NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `location`
--

INSERT INTO `location` (`id`, `name`, `description`, `building_name`, `room_name`, `rack_name`, `box_name`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'Lokasi 1', 'AP Lantai 5', 'Building AP', 'Lantai 5', 'Rack 1', 'Box A', 1, '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000'),
(2, 'Lokasi 2', 'Gedung E FSM Lantai 3', 'Building FSM', 'Lantai 3', 'Rack 2', 'Box B', 2, '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000'),
(3, 'Lokasi 3', 'Kantor Arsip', 'Kantor Arsip', 'Lantai 1', 'Rack 10', 'Box X', 3, '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000'),
(4, 'Lokasi 4', 'Rektorat Lantai 2', 'Rektorat', 'Lantai 2', 'Rack 1', 'Box C', 4, '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission`
--

CREATE TABLE `permission` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission`
--

INSERT INTO `permission` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'access-control', 'Access control', '2025-02-09 07:44:35.715', '2025-02-09 07:44:35.715'),
(2, 'crud-arsip', 'Crud arsip', '2025-02-09 07:44:38.943', '2025-02-09 07:44:38.943'),
(3, 'lokasi-dashboard', 'Lokasi dashboard', '2025-02-09 07:44:38.943', '2025-02-09 07:44:38.943'),
(4, 'dashboard-arsip', 'Dasboard arsip', '2025-02-09 07:44:38.943', '2025-02-09 07:44:38.943'),
(5, 'lokasi-dashboard-arsip', 'Lokasi dashboard arsip', '2025-02-09 07:44:38.943', '2025-02-09 07:44:38.943');

-- --------------------------------------------------------

--
-- Struktur dari tabel `retentiondisposition`
--

CREATE TABLE `retentiondisposition` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `retentiondisposition`
--

INSERT INTO `retentiondisposition` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Musnah', '2025-02-09 07:44:40.538', '2025-02-09 07:44:40.538'),
(2, 'Permanen', '2025-02-09 07:44:40.538', '2025-02-09 07:44:40.538');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'system', 'System role', '2025-02-09 07:44:35.707', '2025-02-09 07:44:35.707'),
(2, 'admin', 'Admin role', '2025-02-09 07:44:37.469', '2025-02-09 07:44:37.469'),
(3, 'pimpinan_uk_1', 'Pimpinan uk 1 role', '2025-02-09 07:44:37.469', '2025-02-09 07:44:37.469'),
(4, 'pimpinan', 'Pimpinan role', '2025-02-09 07:44:37.469', '2025-02-09 07:44:37.469'),
(5, 'operator_uk_1', 'Operator uk 1 role', '2025-02-09 07:44:37.469', '2025-02-09 07:44:37.469'),
(6, 'operator', 'Operator role', '2025-02-09 07:44:37.469', '2025-02-09 07:44:37.469'),
(7, 'verifikator', 'Verifikator role', '2025-02-09 07:44:37.469', '2025-02-09 07:44:37.469');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roleunit`
--

CREATE TABLE `roleunit` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roleunit`
--

INSERT INTO `roleunit` (`id`, `user_id`, `unit_id`, `role_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 1, '2025-02-09 15:29:41.000', '2025-02-09 15:29:41.000'),
(6, 1, 2, 1, '2025-02-09 15:29:41.000', '2025-02-09 15:29:41.000'),
(7, 1, 3, 1, '2025-02-09 15:29:41.000', '2025-02-09 15:29:41.000'),
(8, 1, 4, 1, '2025-02-09 15:29:41.000', '2025-02-09 15:29:41.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `securityclassification`
--

CREATE TABLE `securityclassification` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `securityclassification`
--

INSERT INTO `securityclassification` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Biasa/Terbuka', NULL, '2025-02-09 07:44:40.562', '2025-02-09 07:44:40.562'),
(2, 'Terbatas', NULL, '2025-02-09 07:44:40.562', '2025-02-09 07:44:40.562');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit`
--

CREATE TABLE `unit` (
  `id` int NOT NULL,
  `codename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `parent_unit` int NOT NULL DEFAULT '1',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `unit`
--

INSERT INTO `unit` (`id`, `codename`, `name`, `description`, `created_at`, `updated_at`, `parent_unit`, `status`) VALUES
(1, 'FSM', 'Fakultas FSM', 'Fakultas Sains dan Matematika', '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000', 1, 'unit'),
(2, 'Informatika', 'Prodi Informatika', 'Prodi Informatika', '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000', 1, 'unit'),
(3, 'Arsip', 'UP Arsip', 'Kantor Kearsipan', '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000', 1, 'unit'),
(4, 'Rektorat', 'Rektorat', 'Rektor', '2025-02-09 15:27:26.000', '2025-02-09 15:27:26.000', 1, 'unit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `unitrelation`
--

CREATE TABLE `unitrelation` (
  `id` int NOT NULL,
  `parent_id` int NOT NULL,
  `child_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eduk_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eduk_foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eduk_unit_1` int DEFAULT NULL,
  `eduk_unit_1_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eduk_unit_2` int DEFAULT NULL,
  `eduk_unit_2_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eduk_unit_3` int DEFAULT NULL,
  `eduk_unit_3_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eduk_gelar_depan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eduk_gelar_belakang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `identity`, `email`, `password`, `eduk_status`, `eduk_foto`, `eduk_unit_1`, `eduk_unit_1_name`, `eduk_unit_2`, `eduk_unit_2_name`, `eduk_unit_3`, `eduk_unit_3_name`, `eduk_gelar_depan`, `eduk_gelar_belakang`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'super', '999', 'super@man.com', '$2a$12$/9Qevs4rD0VAllz2RKPapeXCa.Z5O5eb5qEfXxg9v8GQXY6JTt0O6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-09 07:44:35.730', '2025-02-09 07:51:14.137');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_rolepermission`
--

CREATE TABLE `_rolepermission` (
  `A` int NOT NULL,
  `B` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `_rolepermission`
--

INSERT INTO `_rolepermission` (`A`, `B`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `_userrole`
--

CREATE TABLE `_userrole` (
  `A` int NOT NULL,
  `B` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `_userrole`
--

INSERT INTO `_userrole` (`A`, `B`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activitystatus`
--
ALTER TABLE `activitystatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ActivityStatus_name_key` (`name`);

--
-- Indeks untuk tabel `approvalstatus`
--
ALTER TABLE `approvalstatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ApprovalStatus_name_key` (`name`);

--
-- Indeks untuk tabel `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Archive_title_key` (`title`),
  ADD KEY `Archive_classification_id_fkey` (`classification_id`),
  ADD KEY `Archive_archive_status_id_fkey` (`archive_status_id`),
  ADD KEY `Archive_archive_type_id_fkey` (`archive_type_id`),
  ADD KEY `Archive_location_id_fkey` (`location_id`),
  ADD KEY `Archive_user_id_fkey` (`user_id`),
  ADD KEY `Archive_unit_id_fkey` (`unit_id`),
  ADD KEY `Archive_approval_status_id_fkey` (`approval_status_id`);

--
-- Indeks untuk tabel `archivedisposal`
--
ALTER TABLE `archivedisposal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ArchiveDisposal_archive_id_fkey` (`archive_id`),
  ADD KEY `ArchiveDisposal_approval_status_id_fkey` (`approval_status_id`),
  ADD KEY `ArchiveDisposal_approved_by_fkey` (`approved_by`);

--
-- Indeks untuk tabel `archivefiling`
--
ALTER TABLE `archivefiling`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ArchiveFiling_title_key` (`title`),
  ADD KEY `ArchiveFiling_classification_id_fkey` (`classification_id`),
  ADD KEY `ArchiveFiling_archive_status_id_fkey` (`archive_status_id`),
  ADD KEY `ArchiveFiling_archive_type_id_fkey` (`archive_type_id`),
  ADD KEY `ArchiveFiling_location_id_fkey` (`location_id`),
  ADD KEY `ArchiveFiling_user_id_fkey` (`user_id`),
  ADD KEY `ArchiveFiling_unit_id_fkey` (`unit_id`),
  ADD KEY `ArchiveFiling_approval_status_id_fkey` (`approval_status_id`);

--
-- Indeks untuk tabel `archivelog`
--
ALTER TABLE `archivelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ArchiveLog_archive_id_fkey` (`archive_id`),
  ADD KEY `ArchiveLog_user_id_fkey` (`user_id`),
  ADD KEY `ArchiveLog_activity_status_id_fkey` (`activity_status_id`);

--
-- Indeks untuk tabel `archivemutation`
--
ALTER TABLE `archivemutation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ArchiveMutation_archive_id_fkey` (`archive_id`),
  ADD KEY `ArchiveMutation_user_id_fkey` (`user_id`),
  ADD KEY `ArchiveMutation_unit_id_fkey` (`unit_id`),
  ADD KEY `ArchiveMutation_new_unit_id_fkey` (`new_unit_id`);

--
-- Indeks untuk tabel `archivestatus`
--
ALTER TABLE `archivestatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ArchiveStatus_name_key` (`name`);

--
-- Indeks untuk tabel `archivetype`
--
ALTER TABLE `archivetype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ArchiveType_name_key` (`name`);

--
-- Indeks untuk tabel `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Classification_classification_code_key` (`classification_code`),
  ADD KEY `Classification_retention_disposition_id_fkey` (`retention_disposition_id`),
  ADD KEY `Classification_security_classification_id_fkey` (`security_classification_id`);

--
-- Indeks untuk tabel `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Location_name_key` (`name`),
  ADD KEY `Location_unit_id_fkey` (`unit_id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Permission_name_key` (`name`);

--
-- Indeks untuk tabel `retentiondisposition`
--
ALTER TABLE `retentiondisposition`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RetentionDisposition_name_key` (`name`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Role_name_key` (`name`);

--
-- Indeks untuk tabel `roleunit`
--
ALTER TABLE `roleunit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `RoleUnit_user_id_role_id_unit_id_key` (`user_id`,`role_id`,`unit_id`),
  ADD KEY `RoleUnit_unit_id_fkey` (`unit_id`),
  ADD KEY `RoleUnit_role_id_fkey` (`role_id`);

--
-- Indeks untuk tabel `securityclassification`
--
ALTER TABLE `securityclassification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SecurityClassification_name_key` (`name`);

--
-- Indeks untuk tabel `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unit_codename_key` (`codename`),
  ADD UNIQUE KEY `Unit_name_key` (`name`);

--
-- Indeks untuk tabel `unitrelation`
--
ALTER TABLE `unitrelation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UnitRelation_parent_id_fkey` (`parent_id`),
  ADD KEY `UnitRelation_child_id_fkey` (`child_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_username_key` (`username`),
  ADD UNIQUE KEY `User_identity_key` (`identity`),
  ADD UNIQUE KEY `User_email_key` (`email`);

--
-- Indeks untuk tabel `_rolepermission`
--
ALTER TABLE `_rolepermission`
  ADD UNIQUE KEY `_RolePermission_AB_unique` (`A`,`B`),
  ADD KEY `_RolePermission_B_index` (`B`);

--
-- Indeks untuk tabel `_userrole`
--
ALTER TABLE `_userrole`
  ADD UNIQUE KEY `_UserRole_AB_unique` (`A`,`B`),
  ADD KEY `_UserRole_B_index` (`B`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activitystatus`
--
ALTER TABLE `activitystatus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `approvalstatus`
--
ALTER TABLE `approvalstatus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `archive`
--
ALTER TABLE `archive`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `archivedisposal`
--
ALTER TABLE `archivedisposal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `archivefiling`
--
ALTER TABLE `archivefiling`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `archivelog`
--
ALTER TABLE `archivelog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `archivemutation`
--
ALTER TABLE `archivemutation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `archivestatus`
--
ALTER TABLE `archivestatus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `archivetype`
--
ALTER TABLE `archivetype`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `classification`
--
ALTER TABLE `classification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `location`
--
ALTER TABLE `location`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `retentiondisposition`
--
ALTER TABLE `retentiondisposition`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `roleunit`
--
ALTER TABLE `roleunit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `securityclassification`
--
ALTER TABLE `securityclassification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `unitrelation`
--
ALTER TABLE `unitrelation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `archive`
--
ALTER TABLE `archive`
  ADD CONSTRAINT `Archive_approval_status_id_fkey` FOREIGN KEY (`approval_status_id`) REFERENCES `approvalstatus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Archive_archive_status_id_fkey` FOREIGN KEY (`archive_status_id`) REFERENCES `archivestatus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Archive_archive_type_id_fkey` FOREIGN KEY (`archive_type_id`) REFERENCES `archivetype` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Archive_classification_id_fkey` FOREIGN KEY (`classification_id`) REFERENCES `classification` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Archive_location_id_fkey` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Archive_unit_id_fkey` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Archive_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `archivedisposal`
--
ALTER TABLE `archivedisposal`
  ADD CONSTRAINT `ArchiveDisposal_approval_status_id_fkey` FOREIGN KEY (`approval_status_id`) REFERENCES `approvalstatus` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveDisposal_approved_by_fkey` FOREIGN KEY (`approved_by`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveDisposal_archive_id_fkey` FOREIGN KEY (`archive_id`) REFERENCES `archive` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `archivefiling`
--
ALTER TABLE `archivefiling`
  ADD CONSTRAINT `ArchiveFiling_approval_status_id_fkey` FOREIGN KEY (`approval_status_id`) REFERENCES `approvalstatus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveFiling_archive_status_id_fkey` FOREIGN KEY (`archive_status_id`) REFERENCES `archivestatus` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveFiling_archive_type_id_fkey` FOREIGN KEY (`archive_type_id`) REFERENCES `archivetype` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveFiling_classification_id_fkey` FOREIGN KEY (`classification_id`) REFERENCES `classification` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveFiling_location_id_fkey` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveFiling_unit_id_fkey` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveFiling_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `archivelog`
--
ALTER TABLE `archivelog`
  ADD CONSTRAINT `ArchiveLog_activity_status_id_fkey` FOREIGN KEY (`activity_status_id`) REFERENCES `activitystatus` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveLog_archive_id_fkey` FOREIGN KEY (`archive_id`) REFERENCES `archive` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveLog_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `archivemutation`
--
ALTER TABLE `archivemutation`
  ADD CONSTRAINT `ArchiveMutation_archive_id_fkey` FOREIGN KEY (`archive_id`) REFERENCES `archive` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveMutation_new_unit_id_fkey` FOREIGN KEY (`new_unit_id`) REFERENCES `unit` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveMutation_unit_id_fkey` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `ArchiveMutation_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `classification`
--
ALTER TABLE `classification`
  ADD CONSTRAINT `Classification_retention_disposition_id_fkey` FOREIGN KEY (`retention_disposition_id`) REFERENCES `retentiondisposition` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `Classification_security_classification_id_fkey` FOREIGN KEY (`security_classification_id`) REFERENCES `securityclassification` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `Location_unit_id_fkey` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `roleunit`
--
ALTER TABLE `roleunit`
  ADD CONSTRAINT `RoleUnit_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `RoleUnit_unit_id_fkey` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `RoleUnit_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `unitrelation`
--
ALTER TABLE `unitrelation`
  ADD CONSTRAINT `UnitRelation_child_id_fkey` FOREIGN KEY (`child_id`) REFERENCES `unit` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `UnitRelation_parent_id_fkey` FOREIGN KEY (`parent_id`) REFERENCES `unit` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `_rolepermission`
--
ALTER TABLE `_rolepermission`
  ADD CONSTRAINT `_RolePermission_A_fkey` FOREIGN KEY (`A`) REFERENCES `permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_RolePermission_B_fkey` FOREIGN KEY (`B`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `_userrole`
--
ALTER TABLE `_userrole`
  ADD CONSTRAINT `_UserRole_A_fkey` FOREIGN KEY (`A`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_UserRole_B_fkey` FOREIGN KEY (`B`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
