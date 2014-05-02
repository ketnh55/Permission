-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2014 at 05:13 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ok`
--
CREATE DATABASE IF NOT EXISTS `ok` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ok`;

-- --------------------------------------------------------

--
-- Table structure for table `chuyenvienthuly`
--

CREATE TABLE IF NOT EXISTS `chuyenvienthuly` (
  `idChuyenVienThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `NameCB` varchar(45) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DonViThuLy` int(11) NOT NULL,
  PRIMARY KEY (`idChuyenVienThuLy`),
  KEY `FK_CanBo_DVThuLy_idx` (`DonViThuLy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `congdan`
--

CREATE TABLE IF NOT EXISTS `congdan` (
  `idCongDan` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Ngaysinh` date NOT NULL,
  `QueQuan` varchar(45) NOT NULL,
  `SDT` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`idCongDan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemguihs`
--

CREATE TABLE IF NOT EXISTS `dinhkemguihs` (
  `idDinhKemGuiHS` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDinhKem` varchar(45) NOT NULL,
  `PathToFile` varchar(45) NOT NULL,
  PRIMARY KEY (`idDinhKemGuiHS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemnhanhs`
--

CREATE TABLE IF NOT EXISTS `dinhkemnhanhs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDinhKem` varchar(45) NOT NULL,
  `PathToFile` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemtthc`
--

CREATE TABLE IF NOT EXISTS `dinhkemtthc` (
  `idDinhKemTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDK` varchar(45) NOT NULL,
  `PathToFile` varchar(45) NOT NULL,
  PRIMARY KEY (`idDinhKemTTHC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `donvithuly`
--

CREATE TABLE IF NOT EXISTS `donvithuly` (
  `idDonViThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `NameDonViThuLy` varchar(45) NOT NULL,
  PRIMARY KEY (`idDonViThuLy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `idFAQ` int(11) NOT NULL AUTO_INCREMENT,
  `idTTHC` int(11) NOT NULL,
  `NDCauHoi` varchar(45) NOT NULL,
  `NDCauTraLoi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFAQ`),
  KEY `FK_FAQ_DichVu_idx` (`idTTHC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE IF NOT EXISTS `functions` (
  `idFunctions` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `path` varchar(45) NOT NULL,
  `GroupFunction` int(11) NOT NULL,
  PRIMARY KEY (`idFunctions`),
  KEY `fk_Function_GroupFunction1_idx` (`GroupFunction`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`idFunctions`, `name`, `path`, `GroupFunction`) VALUES
(1, 'Khởi tạo dữ liệu', 'initialData', 1),
(2, 'Phân quyền hệ thống', 'permission', 1),
(3, 'Thống kê', 'statistic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groupfunction`
--

CREATE TABLE IF NOT EXISTS `groupfunction` (
  `idGroupFunction` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `Role` int(11) NOT NULL,
  PRIMARY KEY (`idGroupFunction`),
  KEY `fk_GroupFunction_Role1_idx` (`Role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `groupfunction`
--

INSERT INTO `groupfunction` (`idGroupFunction`, `name`, `description`, `Role`) VALUES
(1, 'Quản trị hệ thống', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoidaptt`
--

CREATE TABLE IF NOT EXISTS `hoidaptt` (
  `idHoiDapTT` int(11) NOT NULL AUTO_INCREMENT,
  `DonViThuLy` int(11) NOT NULL,
  `TTHC` int(11) NOT NULL,
  `CongDan` int(11) NOT NULL,
  `CauHoi` varchar(45) NOT NULL,
  `CauTraLoi` varchar(45) DEFAULT NULL,
  `isHide` tinyint(1) NOT NULL,
  PRIMARY KEY (`idHoiDapTT`),
  KEY `FK_HoiDapTT_DichVu_idx` (`TTHC`),
  KEY `FK_HoiDapTT_DVThuLy_idx` (`DonViThuLy`),
  KEY `FK_HoiDapTT_CongDan_idx` (`CongDan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hosotthc`
--

CREATE TABLE IF NOT EXISTS `hosotthc` (
  `idHoSoTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TTHC` int(11) NOT NULL,
  `CongDan` int(11) NOT NULL,
  `DonViThuLy` int(11) NOT NULL,
  `NgayNhan` date NOT NULL,
  `NgayHenTra` date NOT NULL,
  `TinhTrangThuLy` int(11) NOT NULL,
  `DinhKemGui` int(11) DEFAULT NULL,
  `DinhKemNhan` int(11) DEFAULT NULL,
  `IsSentDVTL` tinyint(1) DEFAULT NULL,
  `IsRecieveDVTL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idHoSoTTHC`),
  KEY `FK_HSTTHC_CongDan_idx` (`CongDan`),
  KEY `FK_HSTTHC_TTHC_idx` (`TTHC`),
  KEY `FK_HSTTHC_DVThuLy_idx` (`DonViThuLy`),
  KEY `FK_HSTTHC_TTTL_idx` (`TinhTrangThuLy`),
  KEY `FK_HSTTHC_DKNhan_idx` (`DinhKemNhan`),
  KEY `FK_HSTTHC_DKGui_idx` (`DinhKemGui`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `linhvuc`
--

CREATE TABLE IF NOT EXISTS `linhvuc` (
  `idLinhVuc` int(11) NOT NULL AUTO_INCREMENT,
  `NameDV` varchar(45) NOT NULL,
  `MoTaLinhVuc` varchar(255) NOT NULL,
  PRIMARY KEY (`idLinhVuc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `linhvuc`
--

INSERT INTO `linhvuc` (`idLinhVuc`, `NameDV`, `MoTaLinhVuc`) VALUES
(1, 'đất', '111111111111111'),
(2, 'cấp sổ đỏ', '1111111111'),
(3, 'hôn nhân', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `quyenhan`
--

CREATE TABLE IF NOT EXISTS `quyenhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mota` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `quyenhan`
--

INSERT INTO `quyenhan` (`id`, `name`, `mota`) VALUES
(1, 'niêm yết', NULL),
(2, 'tiếp nhận', NULL),
(3, 'xử lý', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quyentthc`
--

CREATE TABLE IF NOT EXISTS `quyentthc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mota` varchar(45) DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  `TTHC` int(11) NOT NULL,
  `Quyenhan` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_QuyenTTHC_User1_idx` (`User`),
  KEY `fk_QuyenTTHC_TTHC1_idx` (`TTHC`),
  KEY `fk_QuyenTTHC_Quyenhan1_idx` (`Quyenhan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `quyentthc`
--

INSERT INTO `quyentthc` (`id`, `mota`, `User`, `TTHC`, `Quyenhan`) VALUES
(1, NULL, 1, 2, 1),
(2, NULL, 1, 5, 1),
(3, NULL, 2, 5, 2),
(4, NULL, 2, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `role`) VALUES
(1, 'admin', 'ROLE_ADMIN'),
(2, 'staff', 'ROLE_STAFF');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_functions`
--

CREATE TABLE IF NOT EXISTS `role_has_functions` (
  `Role_id` int(11) NOT NULL,
  `Functions_idFunctions` int(11) NOT NULL,
  PRIMARY KEY (`Role_id`,`Functions_idFunctions`),
  KEY `fk_Role_has_Functions_Functions1_idx` (`Functions_idFunctions`),
  KEY `fk_Role_has_Functions_Role1_idx` (`Role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `thontincanhan`
--

CREATE TABLE IF NOT EXISTS `thontincanhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(45) DEFAULT NULL,
  `quequan` varchar(45) DEFAULT NULL,
  `CMTND` varchar(45) DEFAULT NULL,
  `SDT` varchar(45) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrangthuly`
--

CREATE TABLE IF NOT EXISTS `tinhtrangthuly` (
  `idTinhTrangThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `TinhTrangThuLy` varchar(45) NOT NULL,
  `Time` datetime NOT NULL,
  `ChuyenVienThuLy` int(11) NOT NULL,
  `ThuTuThuLy` int(11) NOT NULL,
  PRIMARY KEY (`idTinhTrangThuLy`),
  KEY `FK_TTTL_ChuyenVienTL_idx` (`ChuyenVienThuLy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tthc`
--

CREATE TABLE IF NOT EXISTS `tthc` (
  `idTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `NameTTHC` varchar(45) NOT NULL,
  `LinhVuc` int(11) NOT NULL,
  `DonViThuLy` int(11) DEFAULT NULL,
  `NoiDungThucHien` varchar(255) DEFAULT NULL,
  `GiayToHoSo` varchar(45) DEFAULT NULL,
  `ThoiGianGiaiQuyet` varchar(45) DEFAULT NULL,
  `DinhKem` int(11) DEFAULT NULL,
  `VanBanLienQuan` int(11) DEFAULT NULL,
  `PhanQuyen` int(11) DEFAULT NULL,
  `IsHide` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idTTHC`),
  KEY `FK_TTHC_DichVu_idx` (`LinhVuc`),
  KEY `FK_TTHC_DVThuLy_idx` (`DonViThuLy`),
  KEY `FK_TTHC_DinhKem_idx` (`DinhKem`),
  KEY `FK_TTHC_VBLQ_idx` (`VanBanLienQuan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tthc`
--

INSERT INTO `tthc` (`idTTHC`, `NameTTHC`, `LinhVuc`, `DonViThuLy`, `NoiDungThucHien`, `GiayToHoSo`, `ThoiGianGiaiQuyet`, `DinhKem`, `VanBanLienQuan`, `PhanQuyen`, `IsHide`) VALUES
(1, 'nhà đất1', 1, NULL, 'fffffffffffffff', NULL, 'fffffffffff', NULL, NULL, NULL, NULL),
(2, 'đk kết hôn', 1, NULL, '2222', NULL, '2', NULL, NULL, NULL, NULL),
(5, 'sida', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `Thontincanhan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isActive_UNIQUE` (`isActive`),
  KEY `fk_User_Thontincanhan1_idx` (`Thontincanhan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `isActive`, `Thontincanhan`) VALUES
(1, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL),
(2, 'staff', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@staff', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_role`
--

CREATE TABLE IF NOT EXISTS `user_has_role` (
  `User_id` int(11) NOT NULL,
  `Role_id` int(11) NOT NULL,
  PRIMARY KEY (`User_id`,`Role_id`),
  KEY `fk_User_has_Role_Role1_idx` (`Role_id`),
  KEY `fk_User_has_Role_User1_idx` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_has_role`
--

INSERT INTO `user_has_role` (`User_id`, `Role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vaitro`
--

CREATE TABLE IF NOT EXISTS `vaitro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mota` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vaitroxuly`
--

CREATE TABLE IF NOT EXISTS `vaitroxuly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User` int(11) NOT NULL,
  `Vaitro` int(11) NOT NULL,
  `HoSoTTHC` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Vaitroxuly_User1_idx` (`User`),
  KEY `fk_Vaitroxuly_Vaitro1_idx` (`Vaitro`),
  KEY `fk_Vaitroxuly_HoSoTTHC1_idx` (`HoSoTTHC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vanbanlienquan`
--

CREATE TABLE IF NOT EXISTS `vanbanlienquan` (
  `idVanBanLienQuan` int(11) NOT NULL AUTO_INCREMENT,
  `TenVBLQ` varchar(45) NOT NULL,
  `PathToVBLQ` varchar(45) NOT NULL,
  PRIMARY KEY (`idVanBanLienQuan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chuyenvienthuly`
--
ALTER TABLE `chuyenvienthuly`
  ADD CONSTRAINT `FK_CanBo_DVThuLy` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`) ON UPDATE CASCADE;

--
-- Constraints for table `faq`
--
ALTER TABLE `faq`
  ADD CONSTRAINT `FK_FAQ_DichVu` FOREIGN KEY (`idTTHC`) REFERENCES `tthc` (`idTTHC`) ON UPDATE CASCADE;

--
-- Constraints for table `functions`
--
ALTER TABLE `functions`
  ADD CONSTRAINT `fk_Function_GroupFunction1` FOREIGN KEY (`GroupFunction`) REFERENCES `groupfunction` (`idGroupFunction`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `groupfunction`
--
ALTER TABLE `groupfunction`
  ADD CONSTRAINT `fk_GroupFunction_Role1` FOREIGN KEY (`Role`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hoidaptt`
--
ALTER TABLE `hoidaptt`
  ADD CONSTRAINT `FK_HoiDapTT_CongDan` FOREIGN KEY (`CongDan`) REFERENCES `congdan` (`idCongDan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_HoiDapTT_DichVu` FOREIGN KEY (`TTHC`) REFERENCES `linhvuc` (`idLinhVuc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_HoiDapTT_DVThuLy` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`) ON UPDATE CASCADE;

--
-- Constraints for table `hosotthc`
--
ALTER TABLE `hosotthc`
  ADD CONSTRAINT `FK_HSTTHC_CongDan` FOREIGN KEY (`CongDan`) REFERENCES `congdan` (`idCongDan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_HSTTHC_DKGui` FOREIGN KEY (`DinhKemGui`) REFERENCES `dinhkemguihs` (`idDinhKemGuiHS`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_HSTTHC_DKNhan` FOREIGN KEY (`DinhKemNhan`) REFERENCES `dinhkemnhanhs` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_HSTTHC_DVThuLy` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_HSTTHC_TTHC` FOREIGN KEY (`TTHC`) REFERENCES `tthc` (`idTTHC`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_HSTTHC_TTTL` FOREIGN KEY (`TinhTrangThuLy`) REFERENCES `tinhtrangthuly` (`idTinhTrangThuLy`) ON UPDATE CASCADE;

--
-- Constraints for table `quyentthc`
--
ALTER TABLE `quyentthc`
  ADD CONSTRAINT `fk_QuyenTTHC_Quyenhan1` FOREIGN KEY (`Quyenhan`) REFERENCES `quyenhan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_QuyenTTHC_TTHC1` FOREIGN KEY (`TTHC`) REFERENCES `tthc` (`idTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_QuyenTTHC_User1` FOREIGN KEY (`User`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `role_has_functions`
--
ALTER TABLE `role_has_functions`
  ADD CONSTRAINT `fk_Role_has_Functions_Functions1` FOREIGN KEY (`Functions_idFunctions`) REFERENCES `functions` (`idFunctions`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Role_has_Functions_Role1` FOREIGN KEY (`Role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tinhtrangthuly`
--
ALTER TABLE `tinhtrangthuly`
  ADD CONSTRAINT `FK_TTTL_ChuyenVienTL` FOREIGN KEY (`ChuyenVienThuLy`) REFERENCES `chuyenvienthuly` (`idChuyenVienThuLy`) ON UPDATE CASCADE;

--
-- Constraints for table `tthc`
--
ALTER TABLE `tthc`
  ADD CONSTRAINT `FK_TTHC_DichVu` FOREIGN KEY (`LinhVuc`) REFERENCES `linhvuc` (`idLinhVuc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TTHC_DinhKem` FOREIGN KEY (`DinhKem`) REFERENCES `dinhkemtthc` (`idDinhKemTTHC`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TTHC_DVThuLy` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TTHC_VBLQ` FOREIGN KEY (`VanBanLienQuan`) REFERENCES `vanbanlienquan` (`idVanBanLienQuan`) ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_User_Thontincanhan1` FOREIGN KEY (`Thontincanhan`) REFERENCES `thontincanhan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD CONSTRAINT `fk_User_has_Role_Role1` FOREIGN KEY (`Role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_User_has_Role_User1` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vaitroxuly`
--
ALTER TABLE `vaitroxuly`
  ADD CONSTRAINT `fk_Vaitroxuly_HoSoTTHC1` FOREIGN KEY (`HoSoTTHC`) REFERENCES `hosotthc` (`idHoSoTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vaitroxuly_User1` FOREIGN KEY (`User`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Vaitroxuly_Vaitro1` FOREIGN KEY (`Vaitro`) REFERENCES `vaitro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
