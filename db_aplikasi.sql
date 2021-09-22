-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `last_login` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `instansi`;
CREATE TABLE `instansi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_instansi` varchar(15) NOT NULL,
  `nama_instansi` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `surat_keluar`;
CREATE TABLE `surat_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `perihal` text NOT NULL,
  `sifat` varchar(200) NOT NULL,
  `lampiran` int(11) NOT NULL,
  `kode_instansi` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `surat_keluar` (`id`, `no_surat`, `tgl_surat`, `perihal`, `sifat`, `lampiran`, `kode_instansi`) VALUES
(8,	'32/231/12',	'2021-02-03',	'gerge',	'BIASA',	3,	'2'),
(9,	'234/23',	'2021-02-10',	'gegerg',	'RAHASIA',	2,	'02');

DROP TABLE IF EXISTS `surat_masuk`;
CREATE TABLE `surat_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_terima` date NOT NULL,
  `perihal` text NOT NULL,
  `sifat` varchar(200) NOT NULL,
  `lampiran` int(11) NOT NULL,
  `kode_instansi` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2021-02-02 18:33:28
