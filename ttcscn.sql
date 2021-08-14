-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2019 lúc 05:18 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ttcscn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `thoigianch` datetime NOT NULL DEFAULT current_timestamp(),
  `noidungch` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`id`, `id_nguoidung`, `id_sanpham`, `thoigianch`, `noidungch`) VALUES
(1, 1, 5, '2019-09-25 19:35:36', 'Con hang khong a?'),
(3, 4, 5, '2019-09-27 13:45:09', 'Ad Äƒn cÆ¡m chÆ°a?'),
(4, 5, 5, '2019-09-27 15:08:14', '?');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL,
  `id_hoadon` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `thanhtien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `id_hoadon`, `id_sanpham`, `soluong`, `thanhtien`) VALUES
(33, 15, 9, 1, 17990000),
(36, 14, 8, 2, 13980000),
(38, 14, 11, 1, 21990000),
(47, 18, 11, 1, 21990000),
(48, 17, 10, 2, 19980000),
(49, 19, 9, 1, 17990000),
(53, 23, 8, 2, 13980000),
(54, 23, 9, 1, 17990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `sosao` int(11) NOT NULL,
  `danhgia` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`id`, `id_sanpham`, `id_nguoidung`, `sosao`, `danhgia`) VALUES
(1, 5, 6, 5, 'Chat luong san pham rat tot'),
(2, 5, 4, 4, 'San pham tot');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `ngaylap` datetime NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0,
  `hoanthanh` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `id_nguoidung`, `diachi`, `ngaylap`, `trangthai`, `hoanthanh`) VALUES
(14, 4, 'HÃ  ÄÃ´ng, HÃ  Ná»™i', '2019-09-30 22:05:03', 1, 1),
(15, 5, 'HÃ  Ná»™i', '2019-09-30 22:01:47', 1, 1),
(17, 6, 'Báº¯c Giang', '2019-10-02 09:13:43', 1, 1),
(18, 4, 'PhÃº Thá»', '2019-10-03 22:02:06', 1, 1),
(19, 1, 'Thanh TrÃ¬, HÃ  Ná»™i', '2019-10-04 09:00:59', 1, 1),
(23, 7, 'Cáº§u Giáº¥y, HÃ  Ná»™i', '2019-10-04 09:26:31', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `chitiet` varchar(2000) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `loaihang` varchar(20) NOT NULL,
  `hangsx` varchar(20) NOT NULL,
  `ngaynhap` date NOT NULL,
  `nguoinhap` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `chitiet`, `hinhanh`, `loaihang`, `hangsx`, `ngaynhap`, `nguoinhap`, `soluong`, `dongia`) VALUES
(5, 'Nokia 6.1 Plus', '{\"congnghemanhinh\":\"IPS LCD\",\"dophangiai\":\"Full HD+ (1080 x 2280 Pixels)\",\"kichthuocmh\":\"5.8 inch\",\"cameraT\":\"16 MP\",\"cameraS\":\"ChÃ­nh 16 MP & Phá»¥ 5 MP\",\"quayphim\":\"Quay phim FullHD 1080p@30fps, Quay phim 4K 2160p@30fps\",\"hdh\":\"Android 8 Oreo (Android One)\",\"loaicpu\":\"Qualcomm Snapdragon 636 8 nhÃ¢n 64-bit\",\"tocdo\":\"1.8 GHz\",\"ram\":\"4 GB\",\"rom\":\"64 GB\",\"trongluong\":\"153g\",\"loaipin\":\"Pin chuáº©n Li-Ion\",\"dungluongpin\":\"3060 mAh\",\"dai\":\"147.2 mm\",\"rong\":\"71 mm\",\"day\":\"8 mm\",\"sokhesim\":\"2 SIM Nano (SIM 2 chung khe tháº» nhá»›)\",\"wifi\":\"Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi Direct, Wi-Fi hotspot\",\"bluetooth\":\"A2DP, LE, v5.0\",\"jacktn\":\"3.5 mm\"}', 'nokia-61-plus-3-400x460.png', 'dienthoai', 'nokia', '2019-09-24', 3, 2, 3990000),
(7, 'Samsung Galaxy A80', '{\"congnghemanhinh\":\"Super AMOLED\",\"dophangiai\":\"Full HD+ (1080 x 2400 Pixels)\",\"kichthuocmh\":\"6.7 inch\",\"cameraT\":\"ChÃ­nh 48 MP & Phá»¥ 8 MP, TOF 3D\",\"cameraS\":\"ChÃ­nh 40 MP & Phá»¥ 20 MP, 8 MP, TOF 3D\",\"quayphim\":\"Quay phim FullHD 1080p@30fps, Quay phim FullHD 1080p@60fps, Quay phim 4K 2160p@30fps\",\"hdh\":\"Android 9.0 (Pie)\",\"loaicpu\":\"Snapdragon 730 8 nhÃ¢n\",\"tocdo\":\"2 nhÃ¢n 2.6 GHz Cortex A76 & 2 nhÃ¢n 1.92 GHz Cortex A76 & 4 nhÃ¢n 1.8 GHz Cortex A55\",\"ram\":\"8 GB\",\"rom\":\"128 GB\",\"trongluong\":\"220 g\",\"loaipin\":\"Pin chuáº©n Li-Ion\",\"dungluongpin\":\"3700 mAh\",\"dai\":\"165.2 mm\",\"rong\":\"76.5 mm\",\"day\":\"9.3 mm\",\"sokhesim\":\"2 Nano SIM\",\"wifi\":\"Wi-Fi 802.11 a/b/g/n/ac, Wi-Fi Direct, Wi-Fi hotspot\",\"bluetooth\":\"A2DP, LE, v5.0\",\"jacktn\":\"USB Type-C\"}', 'samsung-galaxy-a80-gold-400x460.png', 'dienthoai', 'samsung', '2019-09-23', 3, 10, 14990000),
(8, 'OPPO F9 6GB', '{\"congnghemanhinh\":\"LTPS LCD\",\"dophangiai\":\"Full HD+ (1080 x 2340 Pixels)\",\"kichthuocmh\":\"6.3 inch\",\"cameraT\":\"25 MP\",\"cameraS\":\"ChÃ­nh 16 MP & Phá»¥ 2 MP\",\"quayphim\":\"Quay phim HD 720p@24fps, Quay phim FullHD 1080p@30fps\",\"hdh\":\"ColorOS 5.2 (Android 8.1)\",\"loaicpu\":\"MediaTek Helio P60 8 nhÃ¢n 64-bit\",\"tocdo\":\"2.0 GHz\",\"ram\":\"6 GB\",\"rom\":\"64 GB\",\"trongluong\":\"169 g\",\"loaipin\":\"Pin chuáº©n Li-Po\",\"dungluongpin\":\"3500 mAh\",\"dai\":\"156.7 mm\",\"rong\":\"74 mm\",\"day\":\"7.99 mm\",\"sokhesim\":\"2 Nano SIM\",\"wifi\":\"Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot\",\"bluetooth\":\"LE, A2DP, v4.2\",\"jacktn\":\"3.5 mm\"}', 'oppo-f9-6gb-red-400x460.png', 'dienthoai', 'oppo', '2019-09-24', 3, 18, 6990000),
(9, 'MSI Prestige PS42 i5 8250U/4GB/256GB/win10 ', '{\"cncpu\":\"Intel Core i5 Kabylake Refresh\",\"loaicpu\":\"8250U\",\"tocdo\":\"1.60 GHz\",\"tocdomax\":\"Turbo Boost 3.4 GHz\",\"busmain\":\"\",\"congnghemanhinh\":\"MÃ n hÃ¬nh chá»‘ng chÃ³i, Táº¥m ná»n IPS\",\"dophangiai\":\"Full HD (1920 x 1080)\",\"kichthuocmh\":\"14 inch\",\"ram\":\"4 GB\",\"loairam\":\"DDR4 (1 khe)\",\"busram\":\"2666 MHz\",\"hotro\":\"16 GB\",\"ocung\":\"SSD 256GB NVMe PCIe\",\"card\":\"IntelÂ® HD Graphics 620\",\"thietkecard\":\"Card Ä‘á»“ há»a tÃ­ch há»£p\",\"cnamthanh\":\"Nahimic 3\",\"hdh\":\"Windows 10 Home SL\",\"conggiaotiep\":\"2 x USB 3.1, HDMI, 2 x USB Type-C\",\"pin\":\"Li - Polymer 4 cell (Pin liá»n)\",\"khedoc\":\"SD\",\"webcam\":\"HD webcam\",\"trongluong\":\"1.18kg\",\"ketnoi\":\"Wi-Fi 802.11 a/b/g/n, Bluetooth 4.2\",\"dai\":\"322 mm\",\"rong\":\"222 mm\",\"day\":\"15.9 mm\"}', 'msi-prestige.jpg', 'maytinh', 'msi', '2019-09-24', 3, 46, 17990000),
(10, 'Asus Vivobook 14 X407UA i3 7020U/4GB/1TB/Win10', '{\"cncpu\":\"Intel Core i3 Kabylake Refresh\",\"loaicpu\":\"7020U\",\"tocdo\":\"2.30 GHz\",\"tocdomax\":\"KhÃ´ng\",\"busmain\":\"\",\"congnghemanhinh\":\"60Hz, Anti-Glare\",\"dophangiai\":\"HD (1366 x 768)\",\"kichthuocmh\":\"14 inch\",\"ram\":\"4 GB\",\"loairam\":\"DDR4 (2 khe)\",\"busram\":\"2400 MHz\",\"hotro\":\"16 GB\",\"ocung\":\"HDD: 1 TB SATA3, Há»— trá»£ khe cáº¯m SSD M.2 PCIe\",\"card\":\"IntelÂ® UHD Graphics 620\",\"thietkecard\":\"Card Ä‘á»“ há»a tÃ­ch há»£p\",\"cnamthanh\":\"SonicMaster audio\",\"hdh\":\"Windows 10 Home SL\",\"conggiaotiep\":\"HDMI, USB 2.0, USB 3.0\",\"pin\":\"Li-Ion 3 cell (PIN liá»n)\",\"khedoc\":\"SD\",\"webcam\":\"HD webcam\",\"trongluong\":\"1.55 kg\",\"ketnoi\":\"Wi-Fi 802.11 a/b/g/n, Bluetooth v4.0\",\"dai\":\"328 mm\",\"rong\":\"246 mm\",\"day\":\"22.9 mm\"}', 'asus-x407ua-i3-7020u-4gb-1tb-win10-bv309t-15-600x600.jpg', 'maytinh', 'asus', '2019-09-25', 3, 18, 9990000),
(11, 'Apple Macbook Air 2017 i5 1.8GHz/8GB/128GB', '{\"cncpu\":\"Intel Core i5 Broadwell\",\"loaicpu\":\"HÃ£ng khÃ´ng cÃ´ng bá»‘\",\"tocdo\":\"1.80 GHz\",\"tocdomax\":\"Turbo Boost 2.9 GHz\",\"busmain\":\"\",\"congnghemanhinh\":\"LED Backlit\",\"dophangiai\":\"WXGA+(1440 x 900)\",\"kichthuocmh\":\"13.3 inch\",\"ram\":\"8 GB\",\"loairam\":\"DDR3L(On board)\",\"busram\":\"1600 MHz\",\"hotro\":\"KhÃ´ng há»— trá»£ nÃ¢ng cáº¥p\",\"ocung\":\"SSD: 128 GB\",\"card\":\"Intel HD Graphics 6000\",\"thietkecard\":\"Card Ä‘á»“ há»a tÃ­ch há»£p\",\"cnamthanh\":\"Combo Microphone & Headphone\",\"hdh\":\"Mac OS\",\"conggiaotiep\":\"MagSafe 2, 2 x USB 3.0, Thunderbolt 2\",\"pin\":\"PIN liá»n (Khoáº£ng 12 giá»)\",\"khedoc\":\"SDXC\",\"webcam\":\"1 MP, HD webcam\",\"trongluong\":\"1.35 Kg\",\"ketnoi\":\"Bluetooth v4.0, Wi-Fi 802.11 a/b/g/n\",\"dai\":\"325 mm\",\"rong\":\"227 mm\",\"day\":\"17 mm\"}', 'apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg', 'maytinh', 'macbook', '2019-09-25', 3, 31, 21990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(30) NOT NULL,
  `matkhau` varchar(32) NOT NULL,
  `tennd` varchar(30) NOT NULL,
  `sdt` int(10) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phanquyen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `taikhoan`, `matkhau`, `tennd`, `sdt`, `diachi`, `email`, `phanquyen`) VALUES
(1, 'ngoc', '63b63159b50d87d00baabfb3f679fe23', 'Ngá»c', 369854721, 'HÃ  Ná»™i', 'ngoc@gmail.com', 0),
(3, 'huyen', 'd856125d827ac297307baf299a8ee1f1', 'Huyá»n', 315469782, 'HÃ  Ná»™i', 'huyen@gmail.com', 1),
(4, 'tuan', 'd6b8cc42803ea100735c719f1d7f5e11', 'Tuáº¥n', 358778945, 'PhÃº Thá»', 'tuan@gmail.com', 0),
(5, 'son', '498d3c6bfa033f6dc1be4fcc3c370aa7', 'Táº¡ SÆ¡n', 325896147, 'HÃ  Ná»™i', 'tason@gmail.com', 0),
(6, 'thien', '7a90825d4514dd0841b21d9b60399a16', 'Thanh Thiá»‡n', 347986512, 'Báº¯c Giang', 'thanhthien@gmail.com', 0),
(7, 'tuyet', 'a6921275a48631bafb772d35637b82a0', 'Tráº§n Thá»‹ Tuyáº¿t', 324578961, 'Nam Äá»‹nh', 'tuyet@gmail.com', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `traloi`
--

CREATE TABLE `traloi` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_cauhoi` int(11) NOT NULL,
  `thoigiantl` datetime NOT NULL DEFAULT current_timestamp(),
  `noidungtl` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `traloi`
--

INSERT INTO `traloi` (`id`, `id_nguoidung`, `id_cauhoi`, `thoigiantl`, `noidungtl`) VALUES
(1, 3, 1, '2019-09-25 21:25:23', 'Co ah.'),
(2, 4, 1, '2019-09-27 14:06:44', 'MÃ¬nh cÃ³ cÃ¹ng cÃ¢u há»i áº¡');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nd_ch` (`id_nguoidung`),
  ADD KEY `fk_sp_ch` (`id_sanpham`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sanpham` (`id_sanpham`),
  ADD KEY `fk_hoadon` (`id_hoadon`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dg_sp` (`id_sanpham`),
  ADD KEY `fk_dg_nd` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nguoidung` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nguoinhap` (`nguoinhap`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `traloi`
--
ALTER TABLE `traloi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nd_tl` (`id_nguoidung`),
  ADD KEY `fk_ch_tl` (`id_cauhoi`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `traloi`
--
ALTER TABLE `traloi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `fk_nd_ch` FOREIGN KEY (`id_nguoidung`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `fk_sp_ch` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `fk_hoadon` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sanpham` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `fk_dg_nd` FOREIGN KEY (`id_nguoidung`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `fk_dg_sp` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_nguoidung` FOREIGN KEY (`id_nguoidung`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_nguoinhap` FOREIGN KEY (`nguoinhap`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `traloi`
--
ALTER TABLE `traloi`
  ADD CONSTRAINT `fk_ch_tl` FOREIGN KEY (`id_cauhoi`) REFERENCES `cauhoi` (`id`),
  ADD CONSTRAINT `fk_nd_tl` FOREIGN KEY (`id_nguoidung`) REFERENCES `taikhoan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
