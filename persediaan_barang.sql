/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : persediaan_barang

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-07-15 00:16:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ordering
-- ----------------------------
DROP TABLE IF EXISTS `ordering`;
CREATE TABLE `ordering` (
  `id` int(10) NOT NULL,
  `id_order` varchar(5) NOT NULL,
  `id_pelanggan` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pic` int(10) NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ordering
-- ----------------------------

-- ----------------------------
-- Table structure for ordering_detail
-- ----------------------------
DROP TABLE IF EXISTS `ordering_detail`;
CREATE TABLE `ordering_detail` (
  `id` int(10) NOT NULL,
  `id_order` varchar(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `harga_satuan` int(10) NOT NULL,
  `total_harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ordering_detail
-- ----------------------------

-- ----------------------------
-- Table structure for po
-- ----------------------------
DROP TABLE IF EXISTS `po`;
CREATE TABLE `po` (
  `id` int(10) NOT NULL,
  `no_so` varchar(10) NOT NULL,
  `id_supplier` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pic` varchar(10) NOT NULL,
  PRIMARY KEY (`no_so`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of po
-- ----------------------------

-- ----------------------------
-- Table structure for po_detail
-- ----------------------------
DROP TABLE IF EXISTS `po_detail`;
CREATE TABLE `po_detail` (
  `id` int(10) NOT NULL,
  `id_po` varchar(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `harga_satuan` int(10) NOT NULL,
  `total_harga` int(10) NOT NULL,
  PRIMARY KEY (`id_po`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of po_detail
-- ----------------------------

-- ----------------------------
-- Table structure for so
-- ----------------------------
DROP TABLE IF EXISTS `so`;
CREATE TABLE `so` (
  `id` int(10) NOT NULL,
  `no_so` varchar(10) NOT NULL,
  `id_pelanggan` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pic` varchar(10) NOT NULL,
  PRIMARY KEY (`no_so`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of so
-- ----------------------------

-- ----------------------------
-- Table structure for so_detail
-- ----------------------------
DROP TABLE IF EXISTS `so_detail`;
CREATE TABLE `so_detail` (
  `id` int(10) NOT NULL,
  `id_so` varchar(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `harga_satuan` int(10) NOT NULL,
  `total_harga` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of so_detail
-- ----------------------------

-- ----------------------------
-- Table structure for t_barang
-- ----------------------------
DROP TABLE IF EXISTS `t_barang`;
CREATE TABLE `t_barang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(20) NOT NULL,
  `quantity` int(5) NOT NULL,
  `satuan` varchar(5) NOT NULL,
  `harga_satuan` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_barang
-- ----------------------------
INSERT INTO `t_barang` VALUES ('1', 'adidas Kuning', '250000', '31250', '25000');

-- ----------------------------
-- Table structure for t_barang_keluar
-- ----------------------------
DROP TABLE IF EXISTS `t_barang_keluar`;
CREATE TABLE `t_barang_keluar` (
  `id` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `id_pic` varchar(10) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_barang_keluar
-- ----------------------------

-- ----------------------------
-- Table structure for t_barang_masuk
-- ----------------------------
DROP TABLE IF EXISTS `t_barang_masuk`;
CREATE TABLE `t_barang_masuk` (
  `id` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `id_pic` varchar(10) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_barang_masuk
-- ----------------------------

-- ----------------------------
-- Table structure for t_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `t_pegawai`;
CREATE TABLE `t_pegawai` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `telpon` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_pegawai
-- ----------------------------
INSERT INTO `t_pegawai` VALUES ('3', 'Okki Setyawan S.Kom', 'Jakarta Timur', '1993-10-01', '02194401887', 'okkisetyawans@gmail.com', 'Jl.Bintara IX No.82');

-- ----------------------------
-- Table structure for t_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `t_pelanggan`;
CREATE TABLE `t_pelanggan` (
  `id_pelanggan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `telpon` int(12) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_pelanggan
-- ----------------------------

-- ----------------------------
-- Table structure for t_supplier
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE `t_supplier` (
  `id_supplier` int(10) NOT NULL,
  `nama_supplier` varchar(15) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `telpon` int(12) NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `id_pegawai` varchar(10) NOT NULL,
  `level` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------
