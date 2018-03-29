-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 25 Mar 2017, 15:41:37
-- Sunucu sürümü: 10.1.10-MariaDB
-- PHP Sürümü: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `testrest`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `task`
--

CREATE TABLE `task` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `due_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `task`
--

INSERT INTO `task` (`id`, `title`, `description`, `project_id`, `due_date`, `status`) VALUES
(1, 'this is my title', 'lorem ipsum upsim morel', '123123', '2012-04-23', 'new'),
(2, 'Corebit', 'Bilisim Teknolojileri', '234234', '2015-06-27', 'old'),
(3, 'Info', 'Yazilim', '345345', '2017-04-05', 'new'),
(4, 'qew', 'asd', '456456', '2014-06-13', 'old');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `task`
--
ALTER TABLE `task`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
