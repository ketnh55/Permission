-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2014 at 01:54 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kate`
--
CREATE DATABASE IF NOT EXISTS `kate` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kate`;

-- --------------------------------------------------------

--
-- Table structure for table `chuyenvienthuly`
--

CREATE TABLE IF NOT EXISTS `chuyenvienthuly` (
  `idChuyenVienThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `NameCB` varchar(45) NOT NULL,
  `NgaySinh` date NOT NULL,
  `DonViThuLy` int(11) DEFAULT NULL,
  PRIMARY KEY (`idChuyenVienThuLy`),
  KEY `FK_CanBo_DVThuLy_idx` (`DonViThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `chuyenvienthuly`
--

INSERT INTO `chuyenvienthuly` (`idChuyenVienThuLy`, `NameCB`, `NgaySinh`, `DonViThuLy`) VALUES
(1, 'ABC', '2014-04-07', 1),
(2, 'Phạm Văn Doanh', '2014-05-14', 2),
(3, 'Nguyen Thi A', '2014-05-16', 2);

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
  `pathtoimage` varchar(100) DEFAULT NULL,
  `tenant` int(11) NOT NULL,
  `cmtnd` varchar(45) NOT NULL,
  `noiohientai` varchar(45) NOT NULL,
  PRIMARY KEY (`idCongDan`),
  KEY `IDX_C751475A4E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `congdan`
--

INSERT INTO `congdan` (`idCongDan`, `Name`, `Ngaysinh`, `QueQuan`, `SDT`, `email`, `pathtoimage`, `tenant`, `cmtnd`, `noiohientai`) VALUES
(1, 'a', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3, '', ''),
(2, 'b', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3, '', ''),
(3, 'c', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3, '', ''),
(4, 'd', '2014-04-14', 'vn', '010000000', 'aa@xyz', '', 3, '', ''),
(5, '1', '2014-04-01', 'vp', '123', '123@gmail.com', 'uploads/avatar/icon.png', 4, '', ''),
(6, '2', '2014-04-01', 'vp', '123', '123@gmail.com', 'uploads/avatar/icon.png', 4, '', ''),
(7, 'anonymous', '0000-00-00', '', '', '', NULL, 7, '', ''),
(8, 'anonymous', '0000-00-00', '', '', '', NULL, 8, '', ''),
(9, 'anonymous', '0000-00-00', '', '', '', NULL, 9, '', ''),
(10, 'anonymous', '0000-00-00', '', '', '', NULL, 10, '', ''),
(11, 'anonymous', '0000-00-00', '', '', '', NULL, 11, '', ''),
(12, 'anonymous', '0000-00-00', '', '', '', NULL, 12, '', ''),
(13, 'Nguyễn Văn Rỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(14, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(15, 'Nguyễn Văn Yỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(16, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(17, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(18, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(19, 'Nguyễn Văn Rỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(20, 'Nguyễn Văn Mỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(21, 'An', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(22, 'An', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(23, 'xxx', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(24, 'abc', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(25, 'Nguyễn Hữu Kết', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(26, 'Nguyễn Hữu Kết', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(27, 'Nguyễn Hữu Kết', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(28, 'An', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(29, 'An', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(30, 'Nguyễn Văn CƯơng', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(31, 'Nguyễn Văn CƯơng', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(32, 'Nguyễn Văn CƯơng', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(33, 'Nguyễn Hữu Kết', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(34, '89', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 3, '0123456789', 'Hà Nội'),
(35, 'Rooney', '2009-01-01', 'Việt Nam', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 17, '134745654645', 'Hà Nội'),
(36, 'Nguyễn Văn Rỗi', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 17, '134745654645', 'Hà Nội'),
(37, 'Nguyễn Thị Khanh', '2009-01-01', 'Hưng Yên', '126566513', 'phamthikhanh@gmail.com', NULL, 18, '0123654789', 'Hà Nội'),
(38, 'Hồ Hữu Bính', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '134745654645', 'Hà Nội'),
(39, 'Phạm Văn Doanh', '2009-01-01', 'Hưng Yên', '126566513', 'ket.nguyen.huu@gmail.com', NULL, 18, '03132313', 'Hà Nội'),
(40, 'Phạm Văn Cương', '2009-01-01', 'Hưng Yên', '126566513', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123654789', 'Hà Nội'),
(41, 'Phạm Văn Thắng', '2009-01-01', 'Hưng Yên', '123456789', 'ket.nguyen.huu@gmail.com', NULL, 18, '0123456789', 'Hà Nội'),
(42, 'Lê Văn Dầu', '2009-01-01', 'Hưng Yên', '126566513', 'ket.nguyen.huu@gmail.com', NULL, 18, '343256354', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemguihs`
--

CREATE TABLE IF NOT EXISTS `dinhkemguihs` (
  `idDinhKemGuiHS` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDinhKem` varchar(300) NOT NULL,
  `PathToFile` varchar(300) NOT NULL,
  `hosotthc` int(11) NOT NULL,
  PRIMARY KEY (`idDinhKemGuiHS`),
  KEY `fk_dinhkemguihs_hosotthc1_idx` (`hosotthc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemnhanhs`
--

CREATE TABLE IF NOT EXISTS `dinhkemnhanhs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDinhKem` varchar(300) NOT NULL,
  `PathToFile` varchar(300) DEFAULT NULL,
  `hosotthc` int(11) NOT NULL,
  `dinhkemtthc` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dinhkemnhanhs_hosotthc1_idx` (`hosotthc`),
  KEY `IDX_264C20294FC789D4` (`dinhkemtthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `dinhkemnhanhs`
--

INSERT INTO `dinhkemnhanhs` (`id`, `TenFileDinhKem`, `PathToFile`, `hosotthc`, `dinhkemtthc`) VALUES
(1, '01_td (1).pdf', 'uploads/attachments/01_td (1).pdf', 1, 19),
(2, 'chrome.exe', 'uploads/attachments/chrome.exe', 2, 19),
(3, '[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 16, 20),
(4, '[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 16, 20),
(5, 'Cách Làm Chủ Bản Thân Bạn.mobi', 'uploads/attachments/Cách Làm Chủ Bản Thân Bạn.mobi', 16, 20),
(6, '[kickass.to]cracking.the.new.gmat.2013.edition.pdf.epub.mobi.torrent', 'uploads/attachments/[kickass.to]cracking.the.new.gmat.2013.edition.pdf.epub.mobi.torrent', 19, 19),
(7, 'soGhiDiemGoiTen10_A.xls', 'uploads/attachments/soGhiDiemGoiTen10_A.xls', 19, 21),
(8, 'icon.png', 'uploads/attachments/icon.png', 20, 19),
(9, 'Thumbs.db', 'uploads/attachments/Thumbs.db', 20, 21),
(10, 'zoom.png', 'uploads/attachments/zoom.png', 21, 26),
(11, 'typing.gif', 'uploads/attachments/typing.gif', 21, 27),
(12, '01_td (1).pdf', 'uploads/attachments/01_td (1).pdf', 22, 28),
(13, '01_td (1).pdf', 'uploads/attachments/01_td (1).pdf', 22, 29),
(14, '01_td (1).pdf', 'uploads/attachments/01_td (1).pdf', 23, 30),
(15, 'First Run', 'uploads/attachments/First Run', 24, 31),
(16, 'debug.log', 'uploads/attachments/debug.log', 24, 32),
(17, 'Con mua ngang qua.doc', 'uploads/attachments/Con mua ngang qua.doc', 25, 22),
(18, 'Cuộc gọi của ex.doc', 'uploads/attachments/Cuộc gọi của ex.doc', 25, 23),
(19, 'Cuộc gọi của ex.doc', 'uploads/attachments/Cuộc gọi của ex.doc', 26, 22),
(20, 'Con mua ngang qua.doc', 'uploads/attachments/Con mua ngang qua.doc', 26, 23),
(21, '1', NULL, 28, 22),
(22, '1', NULL, 28, 23),
(23, '1', NULL, 29, 22),
(24, '1', NULL, 29, 23),
(25, '1', NULL, 30, 22),
(26, '1', NULL, 30, 23),
(27, '1', NULL, 31, 19),
(28, '1', NULL, 31, 21),
(29, '1', NULL, 32, 19),
(30, '1', NULL, 32, 21),
(31, '1', NULL, 33, 19),
(32, '1', NULL, 33, 21),
(33, '1', NULL, 34, 19),
(34, '1', NULL, 34, 21),
(35, '1', NULL, 35, 22),
(36, '1', NULL, 35, 23),
(37, '1', NULL, 36, 22),
(38, '1', NULL, 36, 23),
(39, '1', NULL, 37, 34),
(40, '1', NULL, 37, 35),
(41, '1', NULL, 38, 34),
(42, '1', NULL, 38, 35),
(43, '1', NULL, 39, 34),
(44, '1', NULL, 39, 35),
(45, '1', NULL, 40, 34),
(46, '1', NULL, 40, 35),
(47, '1', NULL, 41, 33),
(48, '1', NULL, 42, 33),
(49, '1', NULL, 43, 33),
(50, '1', NULL, 48, 33),
(51, '1', NULL, 49, 33),
(52, '1', NULL, 50, 33),
(53, '1', NULL, 52, 33),
(54, '1', NULL, 53, 22),
(55, '1', NULL, 53, 23),
(56, '1', NULL, 54, 22),
(57, '1', NULL, 54, 23),
(58, '1', NULL, 55, 22),
(59, '1', NULL, 55, 23),
(60, '1', NULL, 56, 37),
(61, '1', NULL, 57, 37),
(62, '1', NULL, 58, 37),
(63, '1', NULL, 59, 37),
(64, '1', NULL, 60, 37),
(65, '1', NULL, 61, 37),
(66, '1', NULL, 62, 37),
(67, '1', NULL, 66, 37),
(68, '1', NULL, 67, 37),
(69, '1', NULL, 68, 37),
(70, '1', NULL, 70, 37),
(71, '1', NULL, 71, 37),
(72, '1', NULL, 72, 37),
(73, '1', NULL, 76, 37),
(74, '1', NULL, 77, 38),
(75, '1', NULL, 78, 37),
(76, '1', NULL, 79, 38),
(77, '1', NULL, 80, 37),
(78, '1', NULL, 81, 37),
(79, '1', NULL, 82, 40),
(80, '1', NULL, 82, 41),
(81, '1', NULL, 82, 42),
(82, '1', NULL, 82, 43),
(83, '1', NULL, 83, 40),
(84, '1', NULL, 83, 41),
(85, '1', NULL, 83, 42),
(86, '1', NULL, 83, 43);

-- --------------------------------------------------------

--
-- Table structure for table `dinhkemtthc`
--

CREATE TABLE IF NOT EXISTS `dinhkemtthc` (
  `idDinhKemTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TenFileDK` varchar(300) DEFAULT NULL,
  `PathToFile` varchar(300) DEFAULT NULL,
  `Tthc` int(11) NOT NULL,
  PRIMARY KEY (`idDinhKemTTHC`),
  KEY `IDX_4FC789D44F4C5628` (`Tthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `dinhkemtthc`
--

INSERT INTO `dinhkemtthc` (`idDinhKemTTHC`, `TenFileDK`, `PathToFile`, `Tthc`) VALUES
(19, 'uh', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 25),
(20, 'abc', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 24),
(21, '234', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 25),
(22, 'mẫu', 'uploads/attachments/ok (1).sql', 26),
(23, 'mẫu', 'uploads/attachments/01_td (1).pdf', 26),
(24, 'Đô la mỹ', 'uploads/attachments/Thumbs.db', 27),
(25, '123', 'uploads/attachments/Thumbs.db', 28),
(26, '123', 'uploads/attachments/icon.png', 29),
(27, '456', 'uploads/attachments/zoom.png', 29),
(28, 'mỗi khi a nhìn', 'uploads/attachments/ok (1).sql', 30),
(29, 'mỗi khi a nhìn', 'uploads/attachments/01_td (1).pdf', 30),
(30, 'fsd', 'uploads/attachments/01_td (1).pdf', 31),
(31, '123', 'uploads/attachments/01_td (1).pdf', 32),
(32, 'sss', 'uploads/attachments/chrome.exe', 32),
(33, 'fda', 'uploads/attachments/[kickass.to]cracking.the.new.gmat.2013.edition.pdf.epub.mobi.torrent', 35),
(34, '3232', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 36),
(35, '3232', 'uploads/attachments/[kickass.to]dragon.tiger.gate.2006.720p.brrip.xvid.ac3.vision.torrent', 36),
(36, 'giấy tờ nhà đất', NULL, 37),
(37, 'đăng ký kết hôn', NULL, 38),
(38, 'Sổ hộ khẩu', NULL, 39),
(39, 'sổ hộ khẩu', NULL, 40),
(40, 'Sổ hộ khẩu có công chứng', NULL, 42),
(41, 'Chứng minh thư nhân dân của nam đăng ký kết hôn', NULL, 42),
(42, 'Chứng minh thư của nữ đăng ký kết hôn', NULL, 42),
(43, 'Giấy tờ khác', NULL, 42);

-- --------------------------------------------------------

--
-- Table structure for table `donvithuly`
--

CREATE TABLE IF NOT EXISTS `donvithuly` (
  `idDonViThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `NameDonViThuLy` varchar(45) NOT NULL,
  `tenant` int(11) NOT NULL,
  PRIMARY KEY (`idDonViThuLy`),
  KEY `IDX_9D1555684E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `donvithuly`
--

INSERT INTO `donvithuly` (`idDonViThuLy`, `NameDonViThuLy`, `tenant`) VALUES
(1, 'Sở nhà đất hà nội', 18),
(2, 'Sở nhà đất hà nội', 18);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `idFAQ` int(11) NOT NULL AUTO_INCREMENT,
  `idTTHC` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`idFunctions`, `name`, `path`, `GroupFunction`) VALUES
(1, 'Khởi tạo dữ liệu', 'initialData', 1),
(2, 'Phân quyền hệ thống', 'permission', 1),
(3, 'Thống kê', 'statistic', 1),
(4, 'Tiếp nhận hồ sơ', 'reception', 3),
(7, 'Thủ tục hành chính chờ niêm yết', 'statisticListTTHC', 2),
(8, 'Phân quyền cán bộ', 'permission_staff', 7),
(9, 'Thống kê thủ tục hồ sơ đến', 'statisticStatus', 4),
(10, 'Chỉnh sửa thủ tục hành chính đã niêm yết', 'statisticListedTTHC', 2),
(11, 'Hỏi đáp trực tuyến', 'A&Q', 5),
(12, 'Chuyển thụ lý', 'forwardHoso', 3),
(13, 'Trả hồ sơ ', 'giveback', 3),
(14, 'Hồ sơ lưu trữ', 'saveHoso', 3);

-- --------------------------------------------------------

--
-- Table structure for table `groupfunction`
--

CREATE TABLE IF NOT EXISTS `groupfunction` (
  `idGroupFunction` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `Role` int(11) NOT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGroupFunction`),
  KEY `fk_GroupFunction_Role1_idx` (`Role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `groupfunction`
--

INSERT INTO `groupfunction` (`idGroupFunction`, `name`, `description`, `Role`, `icon`) VALUES
(1, 'Quản trị hệ thống', NULL, 1, 'icon-screen2'),
(2, 'Niêm yết thủ tục hành chính', NULL, 2, 'icon-copy'),
(3, 'Xử lý hồ sơ hành chính', NULL, 2, 'icon-stack'),
(4, 'Thống kê thủ tục hành chính', NULL, 3, 'icon-bars'),
(5, 'Hỏi đáp trực tuyến', NULL, 2, 'icon-bubble6'),
(7, 'Phân quyền cán bộ', NULL, 3, 'icon-bug');

-- --------------------------------------------------------

--
-- Table structure for table `hoidaptt`
--

CREATE TABLE IF NOT EXISTS `hoidaptt` (
  `idHoiDapTT` int(11) NOT NULL AUTO_INCREMENT,
  `TTHC` int(11) NOT NULL,
  `CongDan` int(11) DEFAULT NULL,
  `CauHoi` text NOT NULL,
  `CauTraLoi` text,
  `isHide` tinyint(1) NOT NULL,
  `thoigianhoi` date NOT NULL,
  `thoigiantraloi` date DEFAULT NULL,
  PRIMARY KEY (`idHoiDapTT`),
  KEY `FK_HoiDapTT_DichVu_idx` (`TTHC`),
  KEY `FK_HoiDapTT_CongDan_idx` (`CongDan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `hoidaptt`
--

INSERT INTO `hoidaptt` (`idHoiDapTT`, `TTHC`, `CongDan`, `CauHoi`, `CauTraLoi`, `isHide`, `thoigianhoi`, `thoigiantraloi`) VALUES
(3, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'ok', 0, '2014-05-23', '2014-05-05'),
(17, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'ok', 0, '2014-05-23', '2014-05-05'),
(18, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'uh', 0, '2014-05-23', '2014-05-05'),
(19, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'ok', 0, '2014-05-23', '2014-05-05'),
(20, 25, 3, 'afdlkajflkdajkflkdjaflmcxm,.bm.xc,vmslkjfsdafdas', 'ok men', 0, '2014-05-23', '2014-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `hosotthc`
--

CREATE TABLE IF NOT EXISTS `hosotthc` (
  `idHoSoTTHC` int(11) NOT NULL AUTO_INCREMENT,
  `TTHC` int(11) DEFAULT NULL,
  `CongDan` int(11) DEFAULT NULL,
  `NgayNhan` date NOT NULL,
  `NgayHenTra` date NOT NULL,
  `IsSentDVTL` tinyint(1) DEFAULT NULL,
  `IsRecieveDVTL` tinyint(1) DEFAULT NULL,
  `sobiennhanhoso` int(11) NOT NULL,
  PRIMARY KEY (`idHoSoTTHC`),
  KEY `FK_HSTTHC_CongDan_idx` (`CongDan`),
  KEY `FK_HSTTHC_TTHC_idx` (`TTHC`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `hosotthc`
--

INSERT INTO `hosotthc` (`idHoSoTTHC`, `TTHC`, `CongDan`, `NgayNhan`, `NgayHenTra`, `IsSentDVTL`, `IsRecieveDVTL`, `sobiennhanhoso`) VALUES
(1, 25, 2, '2014-04-21', '2014-04-21', NULL, NULL, 0),
(2, 25, 2, '2014-04-21', '2014-04-21', NULL, NULL, 0),
(16, 25, 1, '2014-04-17', '2014-04-22', NULL, NULL, 0),
(19, 25, 1, '2014-04-22', '2014-04-22', NULL, NULL, 0),
(20, 25, 4, '2014-04-22', '2014-04-22', NULL, NULL, 0),
(21, 29, 5, '2014-04-23', '2014-04-23', NULL, NULL, 0),
(22, 30, 7, '2014-04-23', '2014-04-23', NULL, NULL, 0),
(23, 31, 7, '2014-04-23', '2014-04-23', NULL, NULL, 0),
(24, 32, 8, '2014-04-24', '2014-04-24', NULL, NULL, 0),
(25, 26, 32, '2014-04-27', '2014-04-27', NULL, NULL, 0),
(26, 26, 34, '2014-04-27', '2014-04-27', NULL, NULL, 0),
(28, 26, 1, '2014-04-27', '2014-04-27', NULL, NULL, 0),
(29, 26, 1, '2014-04-27', '2014-04-27', NULL, NULL, 0),
(30, 26, 26, '2014-04-29', '2014-04-29', NULL, NULL, 31318),
(31, 25, 28, '2014-04-29', '2014-04-29', NULL, NULL, 4122),
(32, 25, 28, '2014-04-29', '2014-04-29', NULL, NULL, 30539),
(33, 25, 28, '2014-04-29', '2014-04-29', NULL, NULL, 11554),
(34, 25, 28, '2014-04-29', '2014-04-29', NULL, NULL, 8169),
(35, 26, 1, '2014-04-29', '2014-04-29', NULL, NULL, 17331),
(36, 26, 1, '2014-04-29', '2014-04-29', NULL, NULL, 3440),
(37, 36, 15, '2014-04-30', '2014-04-30', NULL, NULL, 257),
(38, 36, 15, '2014-04-30', '2014-04-30', NULL, NULL, 27558),
(39, 36, 15, '2014-04-30', '2014-04-30', NULL, NULL, 3725),
(40, 36, 15, '2014-04-30', '2014-04-30', NULL, NULL, 6631),
(41, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 3373),
(42, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 610),
(43, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 24817),
(48, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 11844),
(49, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 6957),
(50, 35, 16, '2014-05-05', '2014-05-05', NULL, NULL, 5720),
(52, 35, 17, '2014-05-05', '2014-05-05', NULL, NULL, 12084),
(53, 26, 1, '2014-05-05', '2014-05-05', NULL, NULL, 8541),
(54, 26, 1, '2014-05-05', '2014-05-05', NULL, NULL, 28547),
(55, 26, 1, '2014-05-05', '2014-05-05', NULL, NULL, 15058),
(56, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 6183),
(57, 38, 36, '2014-05-06', '2014-05-06', NULL, NULL, 31641),
(58, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 28254),
(59, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 21055),
(60, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 23500),
(61, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 26380),
(62, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 26867),
(66, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 20825),
(67, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 28181),
(68, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 14421),
(70, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 32255),
(71, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 5321),
(72, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 1996),
(76, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 1775),
(77, 39, 35, '2014-05-06', '2014-05-06', NULL, NULL, 30204),
(78, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 27056),
(79, 39, 36, '2014-05-06', '2014-05-06', NULL, NULL, 24434),
(80, 38, 35, '2014-05-06', '2014-05-06', NULL, NULL, 20521),
(81, 38, 36, '2014-05-06', '2014-05-06', NULL, NULL, 24347),
(82, 42, 42, '2014-05-08', '2014-05-08', NULL, NULL, 29608),
(83, 42, 37, '2014-05-08', '2014-05-08', NULL, NULL, 8001);

-- --------------------------------------------------------

--
-- Table structure for table `linhvuc`
--

CREATE TABLE IF NOT EXISTS `linhvuc` (
  `idLinhVuc` int(11) NOT NULL AUTO_INCREMENT,
  `NameDV` varchar(45) NOT NULL,
  `MoTaLinhVuc` varchar(255) NOT NULL,
  `tenant` int(11) NOT NULL,
  PRIMARY KEY (`idLinhVuc`),
  KEY `IDX_F09E180E4E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `linhvuc`
--

INSERT INTO `linhvuc` (`idLinhVuc`, `NameDV`, `MoTaLinhVuc`, `tenant`) VALUES
(1, 'đất', '111111111111111', 3),
(2, 'cấp sổ đỏ', '1111111111', 3),
(3, 'hôn nhân', 'aa', 3),
(4, 'gia đinh', '122', 3),
(5, 'kế hoạch hóa gia đình', 'abcxyz', 3),
(6, 'thu tiền học phí', '2 tỉ', 3),
(7, 'buôn bán bất động sản', 'abcxyz', 3),
(8, 'cấp phép xây dựng cung văn hóa hữu nghị việt ', 'abcxyz', 4),
(9, 'cấp học bổng', 'đi ko về luôn @@', 4),
(10, 'cạn ý tưởng luôn', 'chán', 7),
(11, 'test cái vớ vẩn này chán vl', 'cjasm', 7),
(12, 'buôn bán bất động sản', 'sdfsdfdf', 8),
(13, 'cạn ý tưởng luôn', 'jgfhgf', 8),
(14, 'cạn ý tưởng luôn', 'àdafsd', 3),
(15, 'hôn nhân', 'hôn nhân', 17),
(16, 'Hôn nhân', 'Đăng ký kết hôn', 18);

-- --------------------------------------------------------

--
-- Table structure for table `quyenhan`
--

CREATE TABLE IF NOT EXISTS `quyenhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_quyenhan_role1_idx` (`role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `quyenhan`
--

INSERT INTO `quyenhan` (`id`, `name`, `mota`, `role`) VALUES
(1, 'niêm yết', NULL, 2),
(2, 'tiếp nhận', NULL, 2),
(3, 'phân quyền xử lý', NULL, 4),
(4, 'hỏi đáp', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quyentthc`
--

CREATE TABLE IF NOT EXISTS `quyentthc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mota` varchar(45) DEFAULT NULL,
  `User` int(11) DEFAULT NULL,
  `TTHC` int(11) DEFAULT NULL,
  `Quyenhan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_QuyenTTHC_User1_idx` (`User`),
  KEY `fk_QuyenTTHC_TTHC1_idx` (`TTHC`),
  KEY `fk_QuyenTTHC_Quyenhan1_idx` (`Quyenhan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=137 ;

--
-- Dumping data for table `quyentthc`
--

INSERT INTO `quyentthc` (`id`, `mota`, `User`, `TTHC`, `Quyenhan`) VALUES
(65, NULL, 20, 25, 1),
(66, NULL, 20, 25, 2),
(67, NULL, 20, 25, 3),
(68, NULL, 20, 25, 4),
(69, NULL, 20, 26, 1),
(70, NULL, 20, 26, 2),
(71, NULL, 20, 26, 3),
(72, NULL, 20, 26, 4),
(73, NULL, 24, 27, 1),
(74, NULL, 24, 27, 2),
(75, NULL, 24, 27, 3),
(76, NULL, 24, 27, 4),
(77, NULL, 24, 28, 1),
(78, NULL, 24, 28, 2),
(79, NULL, 24, 28, 3),
(80, NULL, 24, 28, 4),
(81, NULL, 24, 29, 1),
(82, NULL, 24, 29, 2),
(83, NULL, 24, 29, 3),
(84, NULL, 24, 29, 4),
(85, NULL, 30, 30, 1),
(86, NULL, 30, 30, 2),
(87, NULL, 30, 30, 3),
(88, NULL, 30, 30, 4),
(89, NULL, 30, 31, 1),
(90, NULL, 30, 31, 2),
(91, NULL, 30, 31, 3),
(92, NULL, 30, 31, 4),
(93, NULL, 33, 32, 1),
(94, NULL, 33, 32, 2),
(95, NULL, 33, 32, 3),
(96, NULL, 33, 32, 4),
(97, NULL, 33, 33, 1),
(98, NULL, 33, 33, 2),
(99, NULL, 33, 33, 3),
(100, NULL, 33, 33, 4),
(101, NULL, 33, 34, 1),
(102, NULL, 33, 34, 2),
(103, NULL, 33, 34, 3),
(104, NULL, 33, 34, 4),
(105, NULL, 20, 35, 1),
(106, NULL, 20, 35, 2),
(107, NULL, 46, 35, 3),
(108, NULL, 20, 35, 4),
(109, NULL, 20, 36, 1),
(110, NULL, 20, 36, 2),
(111, NULL, 46, 36, 3),
(112, NULL, 20, 36, 4),
(113, NULL, 20, 37, 1),
(114, NULL, 20, 37, 2),
(115, NULL, 46, 37, 3),
(116, NULL, 20, 37, 4),
(117, NULL, 52, 38, 1),
(118, NULL, 53, 38, 2),
(119, NULL, 55, 38, 3),
(120, NULL, 52, 38, 4),
(121, NULL, 52, 39, 1),
(122, NULL, 53, 39, 2),
(123, NULL, 55, 39, 3),
(124, NULL, 53, 39, 4),
(125, NULL, 52, 40, 1),
(126, NULL, 52, 40, 2),
(127, NULL, 55, 40, 3),
(128, NULL, 53, 40, 4),
(129, NULL, 52, 41, 1),
(130, NULL, 52, 41, 2),
(131, NULL, 55, 41, 3),
(132, NULL, 52, 41, 4),
(133, NULL, 57, 42, 1),
(134, NULL, 57, 42, 2),
(135, NULL, 59, 42, 3),
(136, NULL, 57, 42, 4);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `role`) VALUES
(1, 'admin', 'ROLE_ADMIN'),
(2, 'staff', 'ROLE_STAFF'),
(3, 'major', 'ROLE_MAJOR'),
(4, 'lanhdao', 'ROLE_LEADER');

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
-- Table structure for table `tenant`
--

CREATE TABLE IF NOT EXISTS `tenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quequan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CMTND` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `domain` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tendonvi` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4E59C462A7A91E0B` (`domain`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`id`, `hoten`, `quequan`, `CMTND`, `SDT`, `ngaysinh`, `domain`, `tendonvi`) VALUES
(3, 'Lê Đình Thanh', 'Hà Nội', '0123456789', '0123456789', '2014-04-23', 'uet', 'Đại học công nghệ'),
(4, 'Nguyễn Chí Thanh', 'Hà Nội', '0123456789', '0123456789', '2014-04-01', 'ulis', 'ĐH Ngoại Ngữ'),
(6, 'Ibrahimovic', '123', '231', '42321313', '2009-01-01', 'sol', 'Khoa luật'),
(7, 'Rooney', 'HN', '0132', '32132', '2009-01-01', 'bbc', '213132'),
(8, 'Messi', 'Brazil', '12234', '12341', '2009-01-01', 'vnu', '234'),
(9, 'Ibrahimovic', 'Brazil', '0132', '12341', '2009-01-01', 'abc', 'Bộ văn hóa thể thao và du lịch'),
(10, 'Ibrahimovic', 'Brazil', '0132', '12341', '2009-01-01', 'xyz', 'Bộ văn hóa thể thao và du lịch'),
(11, 'Ibrahimovic', 'Brazil', '0132', '12341', '2009-01-01', 'ubuntu', 'Bộ văn hóa thể thao và du lịch'),
(12, '123', '123', '0132', '12341', '2009-01-01', 'ntu', 'ĐHQG'),
(14, 'Ibrahimovic', '123', '0132', '12341', '1111-02-24', 'yaml', 'Khoa luật'),
(15, 'Ibrahimovic', '123', '0132', '12341', '1111-02-24', 'xml', 'sadfdaf'),
(16, 'Ronaldo', 'Brazil', '0132', '12341', '1111-02-24', 'html', 'Microsoft'),
(17, 'Nguyễn Văn A', 'Hà Nội', '012914971', '01656122711', '1992-11-25', 'kateteddy', 'Lao động chân tay'),
(18, 'Nguyễn Hữu Kết', 'Hà Nội', '012914951', '01656122711', '1992-11-25', 'coltech', 'Đại học công nghệ');

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
  `pathtoimage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `thontincanhan`
--

INSERT INTO `thontincanhan` (`id`, `hoten`, `quequan`, `CMTND`, `SDT`, `ngaysinh`, `pathtoimage`) VALUES
(1, 'Nguyyễn Hữu Kết', 'Hà Nội', '0123456789', '0123456789', '2014-04-22', 'uploads/avatar/icon.png'),
(2, 'Nguyyễn Hữu Kết', 'Hà Nội', '123', '0123456789', '2014-04-23', 'uploads/avatar/apple-touch-icon.png'),
(3, NULL, NULL, NULL, NULL, '2014-04-23', 'uploads/avatar/icon.png'),
(4, NULL, NULL, NULL, NULL, '2014-04-23', 'uploads/avatar/icon.png'),
(5, 'Nguyyễn Hữu Kết', NULL, '0123456789', NULL, NULL, 'uploads/avatar/images.jpg'),
(6, NULL, NULL, NULL, NULL, '2014-05-04', 'uploads/avatar/bulldog.jpg'),
(7, 'Nguyễn Thị Dương', 'Hứng Yên', '012952136', '0123456789', '1992-12-23', 'uploads/avatar/icon.png'),
(8, 'Nguyyễn Hữu Kết', 'Hà Nội', '0123456789', '0123456789', '2000-05-19', NULL),
(9, 'Ibra', 'fdsafdas', '031321', '0132413', '1111-11-25', NULL),
(10, 'Nguyyễn Hữu Kết', 'Hà Nội', '0123456789', '0123456789', '1992-05-23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrangthuly`
--

CREATE TABLE IF NOT EXISTS `tinhtrangthuly` (
  `idTinhTrangThuLy` int(11) NOT NULL AUTO_INCREMENT,
  `Time` datetime NOT NULL,
  `Chiutrachnhiem` int(11) DEFAULT NULL,
  `Trangthaihoso` int(11) DEFAULT NULL,
  `Hosotthc` int(11) DEFAULT NULL,
  `Tiepnhan` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTinhTrangThuLy`),
  KEY `fk_tinhtrangthuly_Trangthaihoso1_idx` (`Trangthaihoso`),
  KEY `IDX_33CFE5E1BA4A83C4` (`Hosotthc`),
  KEY `IDX_33CFE5E1554DDB45` (`Chiutrachnhiem`),
  KEY `IDX_33CFE5E1405A5954` (`Tiepnhan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `tinhtrangthuly`
--

INSERT INTO `tinhtrangthuly` (`idTinhTrangThuLy`, `Time`, `Chiutrachnhiem`, `Trangthaihoso`, `Hosotthc`, `Tiepnhan`) VALUES
(5, '2014-04-22 00:00:00', NULL, NULL, 0, NULL),
(6, '2014-05-05 16:49:22', NULL, 1, 0, NULL),
(7, '2014-05-05 16:49:25', NULL, 1, 0, NULL),
(8, '2014-05-05 16:49:26', NULL, 1, 0, NULL),
(9, '2014-05-05 17:26:05', NULL, 1, 0, NULL),
(10, '2014-05-05 17:26:06', NULL, 1, 0, NULL),
(11, '2014-05-05 17:26:08', NULL, 1, 0, NULL),
(12, '2014-05-06 03:24:46', NULL, 1, 0, NULL),
(13, '2014-05-06 03:25:44', NULL, 1, 35, NULL),
(14, '2014-05-06 04:00:53', NULL, 1, 76, NULL),
(15, '2014-05-06 04:11:06', NULL, 1, 77, NULL),
(16, '2014-05-06 04:20:16', NULL, 1, 78, NULL),
(17, '2014-05-06 04:20:55', NULL, 1, 79, NULL),
(18, '2014-05-06 04:21:43', NULL, 1, 80, NULL),
(19, '2014-05-06 04:33:37', 53, 1, 81, NULL),
(20, '2014-05-06 05:47:07', NULL, 2, 77, 2),
(21, '2014-05-07 04:58:35', NULL, 2, 76, 2),
(22, '2014-05-08 10:27:55', 57, 1, 82, NULL),
(23, '2014-05-08 10:28:31', 57, 1, 83, NULL),
(24, '2014-05-08 10:46:51', NULL, 2, 82, 2);

-- --------------------------------------------------------

--
-- Table structure for table `trangthaihoso`
--

CREATE TABLE IF NOT EXISTS `trangthaihoso` (
  `idTrangthaihoso` int(11) NOT NULL AUTO_INCREMENT,
  `trangthai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTrangthaihoso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `trangthaihoso`
--

INSERT INTO `trangthaihoso` (`idTrangthaihoso`, `trangthai`) VALUES
(1, 'Mới tiếp nhận'),
(2, 'Chuyển thụ lý');

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
  `IsHide` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idTTHC`),
  KEY `FK_TTHC_DichVu_idx` (`LinhVuc`),
  KEY `FK_TTHC_DVThuLy_idx` (`DonViThuLy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `tthc`
--

INSERT INTO `tthc` (`idTTHC`, `NameTTHC`, `LinhVuc`, `DonViThuLy`, `NoiDungThucHien`, `GiayToHoSo`, `ThoiGianGiaiQuyet`, `IsHide`) VALUES
(24, 'bán nhà trái phép', 7, NULL, NULL, NULL, NULL, 0),
(25, 'đề xuất cải tiến sách giáo khoa', 6, NULL, 'ok', 'ok', '20 năm', 1),
(26, 'sang tên sổ đỏ', 2, NULL, 'khi công dân có nhu cầu chuyển sổ đỏ', 'Gồm các giấy tờ hồ sơ quan trọng như cmtnd. .', '1 tháng', 1),
(27, 'Đi Hawoai', 9, NULL, 'hãy khóc đi khóc đi', 'giấy khám sức khỏa,200 triệu tiền hoa hồng', '2 tháng', 1),
(28, 'xin cấp phép xây dựng bộ giao thông vận tải', 8, NULL, 'ok', 'ok', 'ok', 1),
(29, 'Đóng bảo hiểm y tế', 9, NULL, '123', '123', '123', 1),
(30, 'đại khái là chán', 11, NULL, 'còn lại gì sau cơn mưa', 'bây h con đường lơi ấy', '2 năm', 1),
(31, 'chiều nay âm u quá', 11, NULL, 'fdsa', 'fadfdas', 'fasdasdf', 1),
(32, 'fadsfdas', 12, NULL, '123', '123', 'a', 1),
(33, 'giao thông vận tải', 13, NULL, NULL, NULL, NULL, 0),
(34, 'kiến trúc', 12, NULL, NULL, NULL, NULL, 0),
(35, 'giao thông vận tải', 1, NULL, '20', 'ok', 'oik', 1),
(36, 'heroes', 6, NULL, '232', '23', '23', 1),
(37, 'niêm yết tthc', 2, NULL, 'ok', 'ok', 'ko', 1),
(38, '123', 15, NULL, 'bố đéo biết', 'ko cần', '2 năm', 1),
(39, 'kiến trúc', 15, NULL, 'ok', 'ok', 'ok', 1),
(40, 'Và anh muốn xin lỗi em', 15, NULL, 'nghỉ đê', 'àd', 'adfasd', 1),
(41, 'Đăng ký kết hôn', 15, NULL, NULL, NULL, NULL, 0),
(42, 'Đăng ký kết hôn', 16, NULL, 'Thực hiện thủ tục đăng ký kết hôn giữa hai công dân khác giới trong phường xã thuộc thẩm quyền', 'Giấy tờ bắt buộc gồm: CMTND của 2 công dân,sổ', '1 tháng', 1);

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
  `tenant` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isActive_UNIQUE` (`isActive`),
  KEY `fk_User_Thontincanhan1_idx` (`Thontincanhan`),
  KEY `IDX_8D93D6494E59C462` (`tenant`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `isActive`, `Thontincanhan`, `tenant`) VALUES
(1, 'admin@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@uet.vnu.edu.vn', NULL, 2, 3),
(20, 'staff@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@gmail.com', NULL, 1, 3),
(21, 'major@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'abc@xyz', NULL, NULL, 3),
(22, 'kate@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, NULL, 3),
(23, 'admin@ulis', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ulis@vnu', NULL, 3, 4),
(24, 'staff@ulis', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, 4, 4),
(26, 'major@ulis', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, NULL, 4),
(28, 'admin@sol', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, 6),
(29, 'admin@bbc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, 7),
(30, 'staff@bbc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@staff', NULL, NULL, 7),
(31, 'major@bbc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, NULL, 7),
(32, 'admin@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, 8),
(33, 'staff@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@staff', NULL, NULL, 8),
(34, 'major@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '11111111@aaa', NULL, NULL, 8),
(35, 'leader@vnu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'leader@123', NULL, NULL, 8),
(36, 'admin@abc', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, 5, 9),
(37, 'admin@xyz', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, 10),
(38, 'admin@ubuntu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, 11),
(39, '@ubuntu', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, 11),
(40, '@ubuntu', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', NULL, NULL, NULL, 11),
(41, 'staff', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, NULL, 11),
(42, 'kate', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, NULL, 11),
(44, 'staff1@ubuntu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '11111111@aaa', NULL, NULL, 11),
(45, 'admin@ntu', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, 12),
(46, 'leader@uet', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '11111111@aaa', NULL, NULL, 3),
(48, 'admin@yaml', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'fsda@fdafds', NULL, NULL, 14),
(49, 'admin@xml', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'fsda@fdafds', NULL, NULL, 15),
(50, 'admin@html', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'fsda@fdafds', NULL, 6, 16),
(51, 'admin@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ket.nguyen.huu@gmail.com', NULL, 7, 17),
(52, 'staff1@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '11111111@aaa', NULL, 8, 17),
(53, 'staff2@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'maotrachdong@localhost.com', NULL, 9, 17),
(54, 'major@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@staff', NULL, NULL, 17),
(55, 'leader@kateteddy', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '123@1', NULL, NULL, 17),
(56, 'admin@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ket.nguyen.huu@gmail.com', NULL, NULL, 18),
(57, 'staff1@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff@staff', NULL, 10, 18),
(58, 'staff2@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', NULL, NULL, 18),
(59, 'leader@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '11111111@aaa', NULL, NULL, 18),
(60, 'major@coltech', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '11111111@aaa', NULL, NULL, 18);

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
(23, 1),
(28, 1),
(29, 1),
(32, 1),
(36, 1),
(37, 1),
(38, 1),
(45, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(56, 1),
(20, 2),
(24, 2),
(30, 2),
(33, 2),
(41, 2),
(42, 2),
(52, 2),
(53, 2),
(57, 2),
(58, 2),
(21, 3),
(26, 3),
(31, 3),
(34, 3),
(54, 3),
(60, 3),
(35, 4),
(46, 4),
(55, 4),
(59, 4);

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
  `User` int(11) DEFAULT NULL,
  `Vaitro` int(11) DEFAULT NULL,
  `HoSoTTHC` int(11) DEFAULT NULL,
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
  `TenVBLQ` varchar(300) DEFAULT NULL,
  `PathToVBLQ` varchar(300) DEFAULT NULL,
  `Tthc` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVanBanLienQuan`),
  KEY `IDX_C328B7844F4C5628` (`Tthc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `vanbanlienquan`
--

INSERT INTO `vanbanlienquan` (`idVanBanLienQuan`, `TenVBLQ`, `PathToVBLQ`, `Tthc`) VALUES
(14, 'uh', 'uploads/attachments/[kickass.to]brick.lane.2007.dvdrip.xvid.eng.duqa.torrent', 25),
(16, 'Mẫu đơn', 'uploads/attachments/01_td (1).pdf', 26),
(17, 'Văn bản yêu cầu nộp tiền', 'uploads/attachments/icon.png', 27),
(18, '123', 'uploads/attachments/icon.png', 28),
(19, '789', 'uploads/attachments/plupload_error.png', 29),
(20, '1111', 'uploads/attachments/plupload_error.png', 29),
(21, 'a nhìn', 'uploads/attachments/ok (1).sql', 30),
(22, 'àdafds', 'uploads/attachments/01_td (1).pdf', 31),
(23, '123', 'uploads/attachments/ok (1).sql', 32),
(24, '123', 'uploads/attachments/[kickass.to]cracking.the.new.gmat.2013.edition.pdf.epub.mobi.torrent', 35),
(25, '3232', 'uploads/attachments/[kickass.to]brick.lane.limited.dvdrip.xvid.done.torrent', 36),
(28, 'abc', NULL, 37),
(29, 'văn bản nhà đất', NULL, 38),
(30, 'nhà đất', NULL, 39),
(31, 'giấy tờ chứng thực', NULL, 40),
(32, 'Nghị định 36CQ về việc đăng ký kết hôn', 'uploads/attachments/zoom.png', 42),
(33, 'Quyết định của chủ tịch UBND Xã về việc đăng ký kết hôn', 'uploads/attachments/images.jpg', 42);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chuyenvienthuly`
--
ALTER TABLE `chuyenvienthuly`
  ADD CONSTRAINT `FK_2C8715E549B06482` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`);

--
-- Constraints for table `congdan`
--
ALTER TABLE `congdan`
  ADD CONSTRAINT `FK_C751475A4E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`);

--
-- Constraints for table `dinhkemguihs`
--
ALTER TABLE `dinhkemguihs`
  ADD CONSTRAINT `fk_dinhkemguihs_hosotthc1` FOREIGN KEY (`hosotthc`) REFERENCES `hosotthc` (`idHoSoTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dinhkemnhanhs`
--
ALTER TABLE `dinhkemnhanhs`
  ADD CONSTRAINT `FK_264C20294FC789D4` FOREIGN KEY (`dinhkemtthc`) REFERENCES `dinhkemtthc` (`idDinhKemTTHC`),
  ADD CONSTRAINT `fk_dinhkemnhanhs_hosotthc1` FOREIGN KEY (`hosotthc`) REFERENCES `hosotthc` (`idHoSoTTHC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dinhkemtthc`
--
ALTER TABLE `dinhkemtthc`
  ADD CONSTRAINT `FK_4FC789D44F4C5628` FOREIGN KEY (`Tthc`) REFERENCES `tthc` (`idTTHC`);

--
-- Constraints for table `donvithuly`
--
ALTER TABLE `donvithuly`
  ADD CONSTRAINT `FK_9D1555684E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`);

--
-- Constraints for table `faq`
--
ALTER TABLE `faq`
  ADD CONSTRAINT `FK_E8FF75CCA24E502` FOREIGN KEY (`idTTHC`) REFERENCES `tthc` (`idTTHC`);

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
  ADD CONSTRAINT `FK_93CB269530A13826` FOREIGN KEY (`CongDan`) REFERENCES `congdan` (`idCongDan`),
  ADD CONSTRAINT `FK_93CB2695D9EB14A2` FOREIGN KEY (`TTHC`) REFERENCES `tthc` (`idTTHC`);

--
-- Constraints for table `hosotthc`
--
ALTER TABLE `hosotthc`
  ADD CONSTRAINT `FK_433CE19230A13826` FOREIGN KEY (`CongDan`) REFERENCES `congdan` (`idCongDan`),
  ADD CONSTRAINT `FK_433CE192D9EB14A2` FOREIGN KEY (`TTHC`) REFERENCES `tthc` (`idTTHC`);

--
-- Constraints for table `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD CONSTRAINT `FK_F09E180E4E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`);

--
-- Constraints for table `quyenhan`
--
ALTER TABLE `quyenhan`
  ADD CONSTRAINT `fk_quyenhan_role1` FOREIGN KEY (`role`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `FK_33CFE5E1405A5954` FOREIGN KEY (`Tiepnhan`) REFERENCES `chuyenvienthuly` (`idChuyenVienThuLy`),
  ADD CONSTRAINT `FK_33CFE5E1554DDB45` FOREIGN KEY (`Chiutrachnhiem`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_33CFE5E1BA4A83C4` FOREIGN KEY (`Hosotthc`) REFERENCES `hosotthc` (`idHoSoTTHC`),
  ADD CONSTRAINT `fk_tinhtrangthuly_Trangthaihoso1` FOREIGN KEY (`Trangthaihoso`) REFERENCES `trangthaihoso` (`idTrangthaihoso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tthc`
--
ALTER TABLE `tthc`
  ADD CONSTRAINT `FK_EF7EF91649B06482` FOREIGN KEY (`DonViThuLy`) REFERENCES `donvithuly` (`idDonViThuLy`),
  ADD CONSTRAINT `FK_EF7EF91676E6772` FOREIGN KEY (`LinhVuc`) REFERENCES `linhvuc` (`idLinhVuc`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D6494E59C462` FOREIGN KEY (`tenant`) REFERENCES `tenant` (`id`),
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

--
-- Constraints for table `vanbanlienquan`
--
ALTER TABLE `vanbanlienquan`
  ADD CONSTRAINT `FK_C328B7844F4C5628` FOREIGN KEY (`Tthc`) REFERENCES `tthc` (`idTTHC`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
