-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 16, 2014 at 10:10 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jadwal_kuliah_ilkom`
--

-- --------------------------------------------------------

--
-- Table structure for table `Dosen`
--

CREATE TABLE IF NOT EXISTS `Dosen` (
  `KODE_DOSEN` varchar(11) NOT NULL,
  `DOSEN` varchar(100) NOT NULL,
  PRIMARY KEY (`KODE_DOSEN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dosen`
--

INSERT INTO `Dosen` (`KODE_DOSEN`, `DOSEN`) VALUES
('1016', 'KAMA ABDUL HAKAM, DR., M.PD.'),
('1017', 'DRS. ENCEP SYARIEF NURDIN, M.PD., M.SI.'),
('1159', 'DRS. M.I.F. BAIHAQI, M.SI.'),
('1289', 'YADI RUYADI, DR., M.SI.'),
('1291', 'DR. RIDWAN EFFENDI, M.ED.'),
('1359', 'LETKOL. INF. DRS. DJADJANG'),
('1407', 'EKA FITRAJAYA RAHMAN, DRS., MT.'),
('1710', 'DRA. WILODATI, M.SI'),
('1713', 'ENJANG ALI NURDIN, DR., H., M.KOM'),
('1714', 'WASLALUDDIN, DRS., M.T.'),
('1718', 'WAWAN SETIAWAN, DR. H., M.KOM'),
('1735', 'AMSOR, DRS., M.SI.'),
('1742', 'ALI KUSRIJADI, DRS., M.SI.'),
('1838', 'MIMIN NURJHANI K, DRA., M.PD.'),
('1982', 'DR. DENI DARMAWAN, S.PD.,M.SI.'),
('1987', 'ALI NUGRAHA, S.PD. M.PD'),
('2019', 'DRS. DEDI SASMITA,M.SI'),
('2076', 'HOKCU SUHANDA, DRS., M.SI.'),
('2147', 'MUNIR, Prof., Dr., M.IT.'),
('2173', 'YAYAN SANJAYA, DR., M.SI.'),
('2178', 'LINA AVIYANTI, S.PD., M.SI.'),
('2231', 'YUDI WIBISONO, ST.,MT.'),
('2287', 'NURDIN, M.PD.'),
('2398', 'ASEP WAHYUDIN, S.KOM., M.T.'),
('2399', 'MUHAMAD NURSALMAN, M.T.'),
('2400', 'RASIM, S.T., M.T.'),
('2401', 'RIZKY RACHMAN J, M.KOM.'),
('2556', 'EDDY PRASETYO NUGROHO, MT.'),
('2586', 'JAJANG KUSNENDAR, S.T., M.T.'),
('2590', 'WAHYUDIN, M.T.'),
('2591', 'HERBERT, S.KOM., M.T'),
('2627', 'RIKA WIDAWATI,SS.,M.PD.'),
('2657', 'HARSA WARA PRABAWA,S.SI.,M.PD.'),
('2658', 'ROSA ARIANI SUKAMTO,ST.,MT.'),
('2687', 'BUDI LAKSONO PUTRO, S.SI., M.T.'),
('2688', 'NOVI SOFIA FITRIASARI, S.SI., M.T.'),
('2695', 'UTARI WIJAYANTI, S.KOM., M.SI.'),
('2731', 'MOCHAMAD WHILKY RIZKYANFI, S.PD., M.PD.'),
('2770', 'ENJUN JUNAETI, M.SI.'),
('615', 'DRS. ACENG MUHTARAM MIRFANI, M.PD.'),
('638', 'MUPID HIDAYAT, DR. H. M.A.'),
('710', 'DR. PARSAORAN SIAHAAN, M.PD.'),
('716', 'FIRDAUS, DRS., H., M.PD.'),
('720', 'HERI SUTARNO, DRS. H. MT.'),
('897', 'UMAN SUHERMAN AS, PROF. DR.M.PD.'),
('934', 'SUFYANI PRABAWANTO, DRS., H., M.ED.');

-- --------------------------------------------------------

--
-- Table structure for table `Jadwal`
--

CREATE TABLE IF NOT EXISTS `Jadwal` (
  `KODE` varchar(30) NOT NULL,
  `KODE_DOSEN` varchar(30) NOT NULL,
  `HARI` int(30) DEFAULT NULL COMMENT 'Senin = 0, Minggu = 6, Kosong = NULL',
  `KAPASITAS` int(11) NOT NULL,
  `JML_MHS` int(11) NOT NULL,
  `JAM_MULAI` varchar(10) DEFAULT NULL,
  `JAM_AKHIR` varchar(10) DEFAULT NULL,
  `ID_RUANG` int(11) NOT NULL,
  `ID_KELAS` int(11) NOT NULL,
  `KETERANGAN` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Jadwal`
--

INSERT INTO `Jadwal` (`KODE`, `KODE_DOSEN`, `HARI`, `KAPASITAS`, `JML_MHS`, `JAM_MULAI`, `JAM_AKHIR`, `ID_RUANG`, `ID_KELAS`, `KETERANGAN`) VALUES
('IK451', '2770', 3, 40, 16, '07:00', '09:30', 6, 1, 'Gabung 2012'),
('MA300', '716', 1, 20, 1, '15:30', '18:00', 6, 2, 'Gabung 2013'),
('IK340', '2591', 2, 50, 2, '15:30', '17:10', 6, 2, 'Gabung 2013'),
('IK599', '2400', 0, 50, 43, '15:30', '18:00', 4, 3, NULL),
('IK598', '2019', 0, 50, 24, '15:30', '18:00', 7, 3, NULL),
('KU400', '1735', 3, 90, 0, '15:30', '18:00', 7, 3, NULL),
('IK433', '2688', 3, 50, 23, '09:30', '12:00', 10, 3, NULL),
('IK550', '2657', 0, 50, 39, '15:30', '18:00', 10, 3, NULL),
('IK540', '2590', 2, 50, 41, '15:30', '18:00', 10, 3, NULL),
('IK493', '2590', 0, 50, 11, '13:00', '14:40', 16, 3, NULL),
('IK511', '2401', 0, 50, 7, '09:30', '12:00', 16, 3, NULL),
('IK441', '2401', 2, 50, 46, '13:00', '15:30', 16, 3, NULL),
('IK492', '2688', 1, 50, 18, '13:00', '15:30', 21, 3, NULL),
('IK530', '2398', 0, 50, 43, '07:00', '09:30', 21, 3, NULL),
('IK531', '1713', 1, 100, 76, '07:00', '09:30', 10, 4, 'Pindah sebagian ke 7A'),
('IK590', '2695', 2, 90, 37, '15:30', '18:00', 4, 5, NULL),
('KU106', '2731', 1, 40, 3, '07:00', '08:40', 6, 5, 'Gabung 2013'),
('IK433', '2688', 4, 40, 2, '13:00', '15:30', 6, 5, NULL),
('IK331', '2687', 4, 40, 4, '08:40', '11:10', 6, 5, 'Gabung 2013'),
('MA303', '1838', 0, 40, 7, '07:00', '09:30', 6, 5, 'Gabung 2013'),
('IK598', '1735', 2, 90, 59, '15:30', '18:00', 7, 5, NULL),
('KU400', '2178', 0, 90, 21, '15:30', '18:00', 8, 5, NULL),
('IK599', '2178', 2, 50, 45, '15:30', '18:00', 8, 5, NULL),
('IK522', '1714', 3, 50, 21, '13:00', '15:30', 9, 5, NULL),
('IK540', '2590', 2, 90, 70, '07:00', '09:30', 10, 5, NULL),
('IK493', '2695', 0, 50, 5, '14:40', '16:20', 16, 5, 'Gabung 2013'),
('IK523', '1735', 3, 50, 7, '09:30', '12:00', 21, 5, 'Gabung 2013'),
('IK492', '1407', 2, 50, 7, '14:40', '17:10', 21, 5, NULL),
('IK531', '1713', 2, 50, 16, '15:30', '18:00', 16, 6, 'Gabung ke Kamis'),
('IK531', '1713', 3, 100, 10, '15:30', '18:00', 20, 6, NULL),
('IK451', '2770', 0, 50, 32, '13:00', '15:30', 3, 7, NULL),
('IK491', '2688', 2, 50, 0, '13:00', '15:30', 3, 7, NULL),
('IK460', '1718', 0, 50, 32, '15:30', '18:00', 3, 7, NULL),
('IK443', '1407', 1, 50, 1, '15:30', '18:00', 3, 7, NULL),
('IK470', '2147', 3, 50, 33, '07:00', '08:40', 10, 7, NULL),
('KU107', '1291', 4, 50, 27, '15:30', '17:10', 12, 7, NULL),
('IK422', '2556', 1, 50, 28, '09:30', '13:00', 23, 7, NULL),
('IK421', '2556', 3, 50, 31, '15:30', '18:00', 23, 7, NULL),
('IK481', '2658', 0, 50, 46, '09:30', '12:00', 5, 8, NULL),
('IK321', '1714', 4, 50, 40, '07:00', '09:30', 5, 8, NULL),
('IK311', '2658', 4, 50, 38, '16:20', '18:50', 7, 8, NULL),
('IK591', '2695', 1, 50, 13, '13:00', '14:40', 8, 8, NULL),
('IK331', '2687', 1, 50, 4, '09:30', '12:00', 8, 8, 'Gabung 2013'),
('IK470', '2556', 1, 50, 26, '13:00', '14:40', 3, 9, NULL),
('IK421', '2556', 3, 50, 28, '13:00', '15:30', 3, 9, NULL),
('IK352', '2770', 4, 50, 4, '13:00', '15:30', 9, 9, 'Gabung 2013'),
('IK353', '2657', 3, 50, 3, '15:30', '18:00', 9, 9, 'Gabung 2013'),
('KU107', '638', 4, 50, 27, '07:00', '08:40', 11, 9, NULL),
('IK340', '2591', 4, 50, 6, '10:20', '12:00', 16, 9, 'Gabung 2013'),
('IK460', '1718', 1, 50, 31, '15:30', '18:00', 16, 9, NULL),
('IK451', '2770', 1, 50, 34, '07:00', '09:30', 23, 9, NULL),
('IK491', '2688', 2, 50, 13, '15:30', '18:00', 23, 9, NULL),
('IK422', '2556', 2, 50, 27, '09:30', '12:00', 23, 9, NULL),
('IK443', '1407', 0, 50, 3, '15:30', '18:00', 23, 9, 'Gabung'),
('IK570', '2231', 3, 50, 0, '15:30', '18:00', 5, 10, NULL),
('IK571', '2231', 3, 50, 26, '13:00', '15:30', 23, 10, NULL),
('IK561', '1713', 1, 50, 20, '15:30', '18:00', 23, 10, NULL),
('IK503', '710', 3, 50, 11, '09:30', '10:20', 3, 11, NULL),
('IK422', '2586', 2, 65, 61, '09:30', '12:00', 3, 11, NULL),
('IK421', '2401', 3, 65, 55, '13:00', '15:30', 10, 11, NULL),
('KU107', '1016', 4, 100, 56, '13:00', '14:40', 13, 11, NULL),
('IK451', '720', 1, 65, 56, '09:30', '12:00', 16, 11, NULL),
('IK370', '2400', 1, 65, 58, '07:00', '09:30', 16, 11, NULL),
('IK311', '2586', 3, 50, 21, '15:30', '18:00', 3, 12, 'FKKB Dosen jadi Bu Novi Gabung 2013'),
('KU105', '1359', 0, 40, 7, '09:30', '11:10', 6, 12, 'Gabung 2013'),
('IK540', '2590', NULL, 100, 4, NULL, NULL, 1, 13, 'Gabung ke KOM-7AB'),
('IK422', '2586', 2, 100, 63, '07:00', '09:30', 3, 13, NULL),
('IK421', '2401', 3, 100, 62, '07:00', '09:30', 3, 13, NULL),
('IK451', '720', 1, 100, 61, '13:00', '15:30', 10, 13, NULL),
('KU107', '1289', 4, 65, 59, NULL, NULL, 14, 13, NULL),
('IK370', '2400', 3, 100, 62, '13:00', '15:30', 16, 13, NULL),
('IK503', '710', 1, 50, 8, '07:00', '09:30', 22, 13, NULL),
('IK407', '1714', 3, 50, 38, '15:30', '18:00', 2, 14, NULL),
('IK351', '720', 0, 50, 30, '07:00', '09:30', 3, 14, 'Awalnya C1'),
('IK410', '2688', 1, 50, 0, '09:30', '12:00', 4, 14, NULL),
('IK340', '2591', 3, 50, 40, '13:00', '14:40', 5, 14, NULL),
('IK311', '2658', 1, 50, 32, '07:00', '09:30', 7, 14, NULL),
('IK354', '2657', 1, 50, 38, '09:30', '12:00', 10, 14, NULL),
('IK352', '1407', 3, 50, 28, '09:30', '12:00', 16, 14, 'FKKB Dosen jadi Bu Enjun'),
('IK331', '2687', 3, 50, 33, '07:00', '09:30', 23, 14, 'asalnya c2'),
('IK450', '2770', 4, 40, 9, '07:00', '08:40', 3, 15, 'FKKB Dosen jadi Pak Eka'),
('IK450', '1407', 4, 50, 4, '14:40', '16:20', 8, 15, 'Gabung 2012'),
('IK407', '2399', 2, 50, 37, '15:30', '18:00', 3, 16, NULL),
('IK410', '2688', 1, 50, 1, '07:00', '09:30', 4, 16, 'Batal harus FKKB'),
('IK311', '2658', 1, 50, 27, '09:30', '12:00', 5, 16, NULL),
('IK340', '2591', 3, 50, 37, '08:40', '10:20', 5, 16, NULL),
('IK351', '720', 0, 50, 27, '13:00', '15:30', 10, 16, 'Awalnya C2'),
('IK354', '2657', 1, 50, 35, '07:00', '09:30', 21, 16, NULL),
('IK352', '2770', 0, 50, 40, '09:30', '12:00', 23, 16, NULL),
('IK331', '2687', 0, 50, 43, '07:00', '09:30', 23, 16, 'asalnya C1'),
('IK311', '2586', 1, 50, 41, '09:30', '12:00', 3, 17, 'FKKB Dosen jadi Bu Novi'),
('IK340', '2591', 0, 50, 41, '08:40', '10:20', 10, 17, NULL),
('KD304', '615', 4, 50, 41, '07:00', '08:40', 13, 17, NULL),
('KD303', '1987', 4, 50, 41, '08:40', '10:20', 13, 17, NULL),
('KD305', '1713', 4, 50, 41, '15:30', '17:10', 13, 17, NULL),
('IK351', '2770', 2, 50, 41, '07:00', '09:30', 16, 17, NULL),
('IK301', '2687', 2, 50, 41, '09:30', '12:00', 16, 17, NULL),
('IK321', '1714', 2, 50, 41, '13:00', '14:40', 21, 17, NULL),
('IK450', '1407', 0, 50, 41, '13:00', '15:30', 23, 17, NULL),
('IK311', '2586', 1, 50, 44, '07:00', '09:30', 3, 18, 'FKKB Dosen jadi Bu Novi'),
('IK301', '2687', 1, 50, 44, '15:30', '18:00', 10, 18, NULL),
('IK340', '2591', 0, 50, 44, '07:00', '08:40', 10, 18, NULL),
('IK321', '2399', 3, 50, 43, '15:30', '18:00', 10, 18, NULL),
('IK503', '1713', 3, 50, 41, '09:30', '11:10', 11, 18, NULL),
('KD304', '2287', 4, 50, 43, '15:30', '17:10', 14, 18, NULL),
('KD303', '1982', 4, 50, 1, '07:00', '08:40', 14, 18, NULL),
('KD305', '1713', 4, 50, 42, '13:00', '14:40', 14, 18, NULL),
('IK351', '2657', 2, 50, 44, '13:00', '15:30', 23, 18, NULL),
('IK450', '1407', 1, 50, 44, '13:00', '15:30', 23, 18, NULL),
('IK310', '2658', 2, 50, 5, '07:00', '08:40', 5, 19, NULL),
('KU106', '2627', 4, 50, 0, '13:00', '14:40', 11, 19, 'Angkatan 2014'),
('KU105', '1016', 4, 50, 0, '08:40', '10:20', 11, 19, 'Angkatan 2014'),
('IK300', '1718', 0, 50, 0, '07:00', '08:40', 16, 19, 'Angkatan 2014'),
('IK310', '2658', 2, 50, 12, '08:40', '10:20', 5, 20, NULL),
('KU106', '2627', 4, 50, 0, '08:40', '10:20', 12, 20, 'Angkatan 2014'),
('KU105', '1017', 4, 50, 0, '07:00', '08:40', 12, 20, 'Angkatan 2014'),
('IK300', '2147', 2, 50, 0, '07:00', '08:40', 23, 20, 'Angkatan 2014'),
('MA100', '934', 1, 100, 0, '09:30', '12:00', 19, 21, 'Angkatan 2014'),
('MA103', '2173', 1, 100, 0, '13:00', '15:30', 19, 21, 'Angkatan 2014'),
('MA102', '2076', 3, 100, 0, '09:30', '12:00', 19, 21, 'Angkatan 2014'),
('MA101', '1714', 3, 100, 0, '07:00', '09:30', 19, 21, 'Angkatan 2014'),
('KD301', '897', 4, 50, 0, '13:00', '14:40', 16, 22, 'Angkatan 2014'),
('KU106', '2731', 4, 50, 0, '08:40', '10:20', 16, 22, 'Angkatan 2014'),
('IK300', '2591', 3, 50, 0, '07:00', '08:40', 16, 22, 'Angkatan 2014'),
('IK320', '1718', 3, 50, 0, '15:30', '18:00', 16, 22, 'Angkatan 2014'),
('KU105', '1710', 4, 50, 0, '07:00', '08:40', 16, 22, 'Angkatan 2014'),
('MA100', '716', 0, 150, 1, '15:30', '18:00', 17, 23, NULL),
('MA101', '1714', 1, 150, 0, '09:30', '12:00', 17, 23, 'Angkatan 2014'),
('MA103', '1838', 1, 150, 0, '13:00', '15:30', 18, 23, 'Angkatan 2014'),
('MA102', '1742', 2, 150, 0, '07:00', '09:30', 19, 23, 'Angkatan 2014'),
('IK320', '1718', 0, 50, 1, '09:30', '11:10', 3, 24, NULL),
('KU106', '2627', 4, 50, 0, '07:00', '08:40', 15, 24, 'Angkatan 2014'),
('KU105', '1359', 4, 50, 0, '13:00', '14:40', 15, 24, 'Angkatan 2014'),
('KD301', '1159', 4, 50, 0, '08:40', '10:20', 15, 24, 'Angkatan 2014'),
('IK300', '2591', 3, 50, 0, '10:20', '12:00', 22, 24, 'Angkatan 2014'),
('KD304', '2287', 3, 50, 2, '07:50', '09:30', 14, 25, NULL),
('IK353', '2657', 2, 50, 40, '07:00', '09:30', 11, 26, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Kelas`
--

CREATE TABLE IF NOT EXISTS `Kelas` (
  `ID_KELAS` int(11) NOT NULL,
  `NAMA_KELAS` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_KELAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Kelas`
--

INSERT INTO `Kelas` (`ID_KELAS`, `NAMA_KELAS`) VALUES
(1, 'KOMC1C2   '),
(2, 'KOM9AB    '),
(3, 'KOM7C     '),
(4, 'KOM7B     '),
(5, 'KOM7AB    '),
(6, 'KOM7A     '),
(7, 'KOM5C2    '),
(8, 'KOM5C1C2  '),
(9, 'KOM5C1    '),
(10, 'KOM5C     '),
(11, 'KOM5B     '),
(12, 'KOM5AB    '),
(13, 'KOM5A     '),
(14, 'KOM3C2    '),
(15, 'KOM3C1C2  '),
(16, 'KOM3C1    '),
(17, 'KOM3B     '),
(18, 'KOM3A     '),
(19, 'KOM1C2    '),
(20, 'KOM1C1    '),
(21, 'KOM1C     '),
(22, 'KOM1B     '),
(23, 'KOM1AB    '),
(24, 'KOM1A     '),
(25, '9.0       '),
(26, '3A        ');

-- --------------------------------------------------------

--
-- Table structure for table `Matakuliah`
--

CREATE TABLE IF NOT EXISTS `Matakuliah` (
  `KODE` varchar(10) NOT NULL,
  `MATA_KULIAH` varchar(100) NOT NULL,
  `SKS` int(11) NOT NULL,
  PRIMARY KEY (`KODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Matakuliah`
--

INSERT INTO `Matakuliah` (`KODE`, `MATA_KULIAH`, `SKS`) VALUES
('IK300', 'PENGANTAR TEKNOLOGI INFORMASI', 2),
('IK301', 'KONSEP TEKNOLOGI', 2),
('IK310', 'ALGORITMA DAN PEMROGRAMAN 1', 2),
('IK311', 'ALGORITMA DAN PEMROGRAMAN II', 3),
('IK320', 'RANGKAIAN ELEKTRONIKA', 2),
('IK321', 'PENGANTAR SISTEM DIGITAL', 2),
('IK331', 'SISTEM BASIS DATA', 3),
('IK340', 'DISAIN WEB', 2),
('IK351', 'MATEMATIKA DISKRIT', 3),
('IK352', 'ALJABAR LINEAR DAN MATRIKS', 3),
('IK353', 'STATISTIKA', 3),
('IK354', 'PROBABILISTIK DAN STATISTIKA', 3),
('IK370', 'REKAYASA PERANGKAT LUNAK', 3),
('IK407', 'SISTEM DIGITAL', 3),
('IK410', 'STRUKTUR DATA', 3),
('IK421', 'JARINGAN KOMPUTER', 3),
('IK422', 'SISTEM OPERASI', 4),
('IK433', 'SISTEM PENDUKUNG KEPUTUSAN', 3),
('IK441', 'GRAFIKA KOMPUTER', 3),
('IK443', 'PENGAJARAN BERBASIS KOMPUTER', 2),
('IK450', 'LOGIKA INFORMATIKA', 2),
('IK451', 'METODE NUMERIK', 3),
('IK460', 'KECERDASAN BUATAN', 3),
('IK470', 'MANAJEMEN PROYEK PERANGKAT LUNAK', 2),
('IK481', 'PEMROGRAMAN BERORIENTASI OBJEK', 3),
('IK491', 'KAPITA SELEKTA', 3),
('IK492', 'SEMINAR', 3),
('IK493', 'KOMPUTER DAN MASYARAKAT', 2),
('IK503', 'MEDIA PEMBELAJARAN ILMU KOMPUTER', 3),
('IK511', 'TEKNIK KOMUNIKASI DATA', 3),
('IK522', 'MIKROELEKTRONIKA', 3),
('IK523', 'RANCANGAN SISTEM DIGITAL', 3),
('IK530', 'SISTEM INFORMASI', 3),
('IK531', 'SISTEM INFORMASI PENDIDIKAN', 3),
('IK540', 'INTERAKSI MANUSIA DAN KOMPUTER', 3),
('IK550', 'PERSAMAAN DIFERENSIAL', 3),
('IK561', 'INTERPRETASI DAN PENGOLAHAN CITRA', 3),
('IK570', 'GAME PROGRAMMING', 3),
('IK571', 'DATA WAREHOUSE DAN MINING', 3),
('IK590', 'PROGRAM LATIHAN PROFESI (PLP)', 4),
('IK591', 'PROGRAM LATIHAN AKADEMIK (PLA)', 2),
('IK598', 'SKRIPSI', 6),
('IK599', 'UJIAN SIDANG', 0),
('KD301', 'PSIKOLOGI PENDIDIKAN', 2),
('KD303', 'KURIKULUM DAN PEMBELAJARAN', 2),
('KD304', 'PENGELOLAAN PENDIDIKAN', 2),
('KD305', 'PENELITIAN PENDIDIKAN', 2),
('KU105', 'PENDIDIKAN KEWARGANEGARAAN', 2),
('KU106', 'PENDIDIKAN BAHASA INDONESIA', 2),
('KU107', 'PENDIDIKAN LINGKUNGAN SOSIAL, BUDAYA, DAN TEKNOLOGI (PLSBT)', 2),
('KU400', 'KULIAH KERJA NYATA (KKN)', 2),
('MA100', 'MATEMATIKA DASAR', 3),
('MA101', 'FISIKA UMUM', 3),
('MA102', 'KIMIA UMUM', 3),
('MA103', 'BIOLOGI UMUM', 3),
('MA300', 'MATEMATIKA DASAR', 3),
('MA303', 'BIOLOGI UMUM', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Ruang`
--

CREATE TABLE IF NOT EXISTS `Ruang` (
  `ID_RUANG` int(11) NOT NULL,
  `RUANG` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_RUANG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ruang`
--

INSERT INTO `Ruang` (`ID_RUANG`, `RUANG`) VALUES
(1, NULL),
(2, 'S-306'),
(3, 'S-305'),
(4, 'Lab. Umum'),
(5, 'Lab. Praktikum'),
(6, 'Lab. Pemograman Dasar'),
(7, 'Lab. Pemograman &RPL'),
(8, 'Lab. Multimedia'),
(9, 'Lab. Elektronika & Hardware'),
(10, 'IK-207 GD.FPMIPA-C'),
(11, 'IK-206A GD.FPMIPA-C'),
(12, 'IK-206 GD.FPMIPA-C'),
(13, 'IK-204 GD.FPMIPA-C'),
(14, 'IK-203 GD.FPMIPA-C'),
(15, 'IK-202 GD.FPMIPA-C'),
(16, 'IK-201 GD.FPMIPA-C'),
(17, 'E-406'),
(18, 'E-405'),
(19, 'E-210'),
(20, 'B-305 GD.FPMIPA-B'),
(21, 'B-301 GD.FPMIPA-B'),
(22, 'B-209 GD.FPMIPA-B'),
(23, 'B-205 GD.FPMIPA-B');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
