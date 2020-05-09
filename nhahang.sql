-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 09, 2020 lúc 11:42 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhahang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `TenDanhMuc` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `TenDanhMuc`) VALUES
(2, 'Đồ uống'),
(4, 'Bữa sáng'),
(5, 'dfdsf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datban`
--

CREATE TABLE `datban` (
  `id` int(11) NOT NULL,
  `HoTen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SDT` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Ngay` date DEFAULT NULL,
  `Gio` time NOT NULL,
  `SoNguoi` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `datban`
--

INSERT INTO `datban` (`id`, `HoTen`, `Email`, `SDT`, `Ngay`, `Gio`, `SoNguoi`) VALUES
(4, 'Tuanh', 'nguyenanh@gmail.com', '12345679', '2020-05-08', '00:00:00', '2'),
(5, 'Đạt', 'dat@gmail.com', '021654656', '2020-05-29', '00:00:00', '2'),
(6, 'Mạnh', 'manh@gmail.com', '012345678', '2020-05-04', '01:30:00', '3'),
(7, 'Đạt', 'dat@gmail.com', '0123456789', '2020-05-30', '01:00:00', '4+'),
(8, 'Mạnh', 'dat@gmail.com', '0123456789', '2020-05-08', '03:30:00', '3'),
(9, 'Nhung', 'Nhung@gmail.com', '0123456789', '2020-05-08', '00:00:00', '4+'),
(10, 'Nhung', 'Nhung@gmail.com', '0123456789', '2020-05-08', '00:00:00', '4+'),
(11, 'Đức Anh', 'ducanh@gmail.com', '0123456', '2020-05-11', '02:00:00', '3'),
(12, 'Đức Anh', 'ducanh@gmail.com', '0123456', '2020-05-11', '07:30:00', '1'),
(13, 'Đạt', 'dat@gmail.com', '0123456789', '2020-05-18', '04:00:00', '4+'),
(14, 'Mạnh', 'manh@gmail.com', '0123456789', '2020-05-18', '06:00:00', '4+'),
(15, 'Đức Anh', 'ducanh@gmail.com', '0123456789', '2020-05-18', '04:00:00', '4+'),
(16, 'Kiên', 'Kien@gmail.com', '0123456789', '2020-05-18', '00:30:00', '4+'),
(17, 'khánh', 'Kien@gmail.com', '0123456789', '2020-05-18', '00:30:00', '4+'),
(18, 'Trung', 'Trung@gmail.com', '0123456789', '2020-05-18', '01:00:00', '4+');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monan`
--

CREATE TABLE `monan` (
  `id` int(11) NOT NULL,
  `TenMonAn` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `MoTa` text COLLATE utf8_vietnamese_ci NOT NULL,
  `HinhAnh` text COLLATE utf8_vietnamese_ci NOT NULL,
  `Gia` decimal(10,0) NOT NULL,
  `idDanhMuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `monan`
--

INSERT INTO `monan` (`id`, `TenMonAn`, `MoTa`, `HinhAnh`, `Gia`, `idDanhMuc`) VALUES
(3, 'Nước cam', 'Cam', '2020-02-01-02-51-53drink-1.jpg', '90000', 2),
(4, 'Salad', 'Thịt bò, dưa chuột', '2020-02-02-02-31-00breakfast-2.jpg', '35000', 4),
(8, 'Coca-cola', 'Chanh', '2020-02-16-03-49-31drink-2.jpg', '800000', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'a', 'a', '0000-00-00 00:00:00', '$2y$12$v/5r/sn25O90.KZxd6uq4uSuK7gFbPMHeZZSxoaclJD0hM8.p6vEq', NULL, NULL, NULL),
(5, 'b', 'b', NULL, '$2y$10$UgaAduHVoQyJqSoIx8XEt.Xw0DQNDKP4vfurIR1Oba7LL/41TOJ/K', NULL, '2020-02-08 21:08:41', '2020-02-08 21:08:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `datban`
--
ALTER TABLE `datban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monan_ibfk_1` (`idDanhMuc`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `datban`
--
ALTER TABLE `datban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `monan`
--
ALTER TABLE `monan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `monan`
--
ALTER TABLE `monan`
  ADD CONSTRAINT `monan_ibfk_1` FOREIGN KEY (`idDanhMuc`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
