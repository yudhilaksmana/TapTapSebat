-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2018 at 10:58 AM
-- Server version: 10.0.34-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doyb1351_TTS`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(10) NOT NULL,
  `link` varchar(150) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama`, `harga`, `link`, `foto`) VALUES
(1, 'XIAOMI NOTE 4A', 1555000, 'https://www.bukalapak.com/p/handphone/hp-smartphone/crp27g-jual-hp-xiaomi-redmi-4a?campaign=koleksi-xiaomi-terbaik-di-kelasnya&campaign_name=&from=cur', ''),
(2, 'XIAOMI NOTE 5A', 1695000, 'https://www.bukalapak.com/p/handphone/hp-smartphone/dkkkc9-jual-hp-xiaomi-note5a?campaign=koleksi-xiaomi-terbaik-di-kelasnya&campaign_name=&from=curre', ''),
(3, 'XIAOMI REDMI MI A1 RAM 4GB INTERNAL 64GB', 2999000, 'https://www.bukalapak.com/p/handphone/hp-smartphone/dw58j2-jual-xiaomi-redmi-mi-a1-ram-4gb-internal-64gb-resmi?campaign=koleksi-xiaomi-terbaik-di-kela', ''),
(4, 'Xiaomi Redmi 2 Prime 4G Lte - Ram 2Gb Internal 16 Gb', 1129000, 'https://www.bukalapak.com/p/handphone/hp-smartphone/dunlys-jual-xiaomi-redmi-2-prime-4g-lte-ram-2gb-internal-16-gb-distributor?campaign=koleksi-xiaomi', ''),
(5, 'Samsung Galaxy J2 Prime', 1459000, 'https://www.lazada.co.id/samsung-galaxy-j2-prime-silver-11981327.html?spm=a2o4j.searchlistcategory.list.1.2e4fa3206hcl6X', ''),
(6, 'Samsung Galaxy Note8 Smartphone - Midnight Black', 8750000, 'https://www.lazada.co.id/samsung-galaxy-note8-smartphone-midnight-black-77457383.html?spm=a2o4j.searchlistcategory.list.11.117ed565CkeeJW', ''),
(7, 'Samsung Galaxy J7 Prime - 32GB', 2870000, 'https://www.lazada.co.id/samsung-galaxy-j7-prime-32gb-black-12194471.html?spm=a2o4j.searchlistcategory.list.14.554f4327lQuNxs', ''),
(8, 'OPPO A57 Smartphone Gold [32GB 3GB]', 2050000, 'https://www.lazada.co.id/oppo-a57-smartphone-gold-32gb-3gb-81890523.html?spm=a2o4j.searchlistcategory.list.19.17cbb8a0BzKypC', ''),
(9, 'Oppo A37 GOLD - RAM 2GB - ROM 16GB - 4G Lte', 1799000, 'https://www.lazada.co.id/oppo-a37-gold-ram-2gb-rom-16gb-4g-lte-16732140.html?spm=a2o4j.searchlistcategory.list.49.116d6e3cpxmXu9', ''),
(10, 'OPPO F5 Smartphone - Red [32GB/ 4GB]', 3999000, 'https://www.blibli.com/oppo-f5-smartphone-red-32gb-4gb-MTA.1513084.htm?ds=ADC-28439-00092-00001&list=Search%20Results%20Page', ''),
(11, 'Lenovo Ideapad 110 8GID - Intel Celeron N3060 - RAM 4GB - 1TB - 14\"', 3499000, 'https://www.lazada.co.id/lenovo-ideapad-110-8gid-intel-celeron-n3060-ram-4gb-1tb-1434-dos-hitam-24755114.html?spm=a2o4j.searchlistcategory.list.1.74cc', ''),
(12, 'Lenovo Ideapad 320 - AMD A9-9420 - RAM 8GB - 1TB - 14\'', 5200000, 'https://www.lazada.co.id/lenovo-ideapad-320-amd-a9-9420-ram-8gb-1tb-1439-dos-black-39743033.html?spm=a2o4j.searchlistcategory.list.8.7ca580f8HcQIo1', ''),
(13, 'LENOVO E450,Intel Core i7 Broadwell,AMD Radeon R5,Win 8', 2470000, 'https://www.lazada.co.id/lenovo-e450intel-core-i7-broadwellamd-radeon-r5win-8mulus-amp-mantap-82183839.html?spm=a2o4j.searchlistcategory.list.14.4dd3d', ''),
(14, 'HP 15-BW528AU - AMD E2-9000e - RAM 4GB - 500GB - 15.6 inch', 3099000, 'https://www.lazada.co.id/hp-15-bw528au-amd-e2-9000e-ram-4gb-500gb-156-inch-dos-black-lazada-eksklusif-53789794.html?spm=a2o4j.searchlistcategory.list.', ''),
(15, 'HP 14-BS006TU Notebook - Gold [N3060 DC/4GB/500GB/IHG 400/14\"HD/W10]', 3899000, 'https://www.lazada.co.id/hp-14-bs006tu-notebook-gold-n3060-dc4gb500gbihg-4001434hdw10-71191640.html?spm=a2o4j.searchlistcategory.list.3.363a9713CNi95q', ''),
(16, 'HP 14-bw005au-AMD QuadCore A4 9210-4GB-14\"-AMD RADEON R3-black', 3551500, 'https://www.lazada.co.id/hp-14-bw005au-amd-quadcore-a4-9210-4gb-1434-amd-radeon-r3-black-36702723.html?spm=a2o4j.searchlistcategory.list.7.c39bb97wKgp', ''),
(17, 'Yamaha Gitar Klasik C-315', 685000, 'https://www.lazada.co.id/yamaha-gitar-klasik-c-315-992330.html?spm=a2o4j.searchlistcategory.list.1.29d43d78QwoZBH', ''),
(18, 'Yamaha Gitar Folk F-310 - Natural', 998000, 'https://www.lazada.co.id/yamaha-gitar-folk-f-310-natural-997465.html?spm=a2o4j.searchlistcategory.list.3.7790f788Nuxdi6', ''),
(19, 'Yamaha Recorder YRN-21 - Hitam', 118000, 'https://www.lazada.co.id/yamaha-recorder-yrn-21-hitam-86658.html?spm=a2o4j.searchlistcategory.list.3.3a305ea1hwne5F', ''),
(20, 'Yamaha Alto Recorder YRA-27 III', 315000, 'https://www.lazada.co.id/yamaha-alto-recorder-yra-27-iii-997471.html?spm=a2o4j.searchlistcategory.list.5.52286046gIYx2P', ''),
(21, 'Kaos Pria T-Shirt Distro Premium Anime One Piece Luffy', 36000, 'https://www.lazada.co.id/vanwin-kaos-pria-t-shirt-distro-premium-anime-one-piece-luffy-hitam-38545756.html?spm=a2o4j.searchlistcategory.list.14.6796cc', ''),
(22, 'Kaos T-Shirt Distro / Kaos Pria / T-Shirt Pria Anime Premium Water', 25000, 'https://www.lazada.co.id/cikitashop-kaos-t-shirt-distro-kaos-pria-t-shirt-pria-anime-premium-water-55028840.html?spm=a2o4j.searchlistcategory.list.20.', ''),
(23, 'Fashion Pria Kaos Lengan Pendek Diego', 41000, 'https://www.lazada.co.id/high5-fashion-pria-kaos-lengan-pendek-diego-putih-49335678.html?spm=a2o4j.searchlistcategory.list.30.6796ccceV5dYAf', ''),
(24, 'Fashion Pria Kaos Lengan Pendek AMITY FOREVER Navy Blue', 37600, 'https://www.lazada.co.id/high5-fashion-pria-kaos-lengan-pendek-amity-forever-navy-blue-78818859.html?spm=a2o4j.searchlistcategory.list.31.6796ccce6DZp', ''),
(25, 'Kaos T-Shirt Distro Unisex Spandex Wolf', 27500, 'https://www.lazada.co.id/beargrid-kaos-t-shirt-distro-unisex-spandex-wolf-71551651.html?spm=a2o4j.searchlistcategory.list.46.6796ccceY8bBEM', ''),
(26, 'Kaos T-Shirt Distro Premium Jack Daniel', 36000, 'https://www.lazada.co.id/vanwin-kaos-t-shirt-distro-premium-jack-daniel-hitam-38880894.html?spm=a2o4j.searchlistcategory.list.58.6796ccce31UCmy', ''),
(27, 'Djavu Jaket Hoodie Zipper Polos Unisex [Hitam]  ', 82500, 'https://www.lazada.co.id/djavu-jaket-hoodie-zipper-polos-unisex-hitam-13553299.html?spm=a2o4j.searchlistcategory.list.4.3d710b50kdK8uK', ''),
(28, 'Palemo Jaket Sweater Polos Hoodie Jumper Misty Muda -Unisex  ', 72000, 'https://www.lazada.co.id/palemo-jaket-sweater-polos-hoodie-jumper-misty-muda-unisex-11181099.html?spm=a2o4j.searchlistcategory.list.18.3d710b50Apz9YM', ''),
(29, 'AFS JEEP Man Autumn Sweater Sports Casual Cardigan Jacket Loose', 619000, 'https://www.lazada.co.id/afs-jeep-man-autumn-sweater-sports-casual-cardigan-jacket-looselarge-size-coat-black-intl-28107666.html?spm=a2o4j.searchlistc', ''),
(30, 'BDS jaket sweater Hoodie DROPDEAD HOAM', 96000, 'https://www.lazada.co.id/bds-jaket-sweater-hoodie-dropdead-hoam-66306143.html?spm=a2o4j.searchlistcategory.list.46.3d710b50JvCtnS', ''),
(31, 'Just Cloth Kaos Hoodie Polos', 69000, 'https://www.lazada.co.id/just-cloth-kaos-hoodie-polos-18202557.html?spm=a2o4j.searchlistcategory.list.171.3d710b50IKyWmp', ''),
(32, 'Gudang Fashion - Celana Training Sporty - Hitam', 43110, 'https://www.lazada.co.id/gudang-fashion-celana-training-sporty-hitam-53608038.html?spm=a2o4j.searchlistcategory.list.4.5cb5ea50dz3WD6', ''),
(33, 'EM\'S Celana Chino Abu-Abu', 72900, 'https://www.lazada.co.id/em39s-celana-chino-abu-abu-8041987.html?spm=a2o4j.searchlistcategory.list.10.5cb5ea50IHaeXn', ''),
(34, 'Celana Chino Hitam Casual Pria', 84750, 'https://www.lazada.co.id/celana-chino-hitam-casual-pria-39best-seller-62296876.html?spm=a2o4j.searchlistcategory.list.15.5cb5ea50RwiF9F', ''),
(35, 'Celana Panjang Blackhawk Tactical outdoor Black', 97000, 'https://www.lazada.co.id/celana-panjang-blackhawk-tactical-outdoor-black-31956489.html?spm=a2o4j.searchlistcategory.list.22.5cb5ea50CRHWqX', ''),
(36, 'Celana Tactical Blackhawk PDL Pendek', 87000, 'https://www.lazada.co.id/celana-tactical-blackhawk-pdl-pendek-abu-48077033.html?spm=a2o4j.searchlistcategory.list.81.5cb5ea50BiQBzs', ''),
(37, 'Casual Shoes Man Shoes Sneakers Running Shoes Sports', 228888, 'https://www.lazada.co.id/toursh-men-casual-shoes-man-shoes-sneakers-running-shoes-sports-shoes-intl-61552010.html?spm=a2o4j.searchlistcategory.list.1.', ''),
(38, 'Sneaker Mens Krasovki Men Mens Sports Shoes', 100000, 'https://www.lazada.co.id/slip-on-sneaker-mens-krasovki-men-mens-sports-shoes-running-sneakers-men-krasovki-tenisky-men39s-sneakers-size-intl-64409280.', ''),
(39, 'CRESSIDA - HYAC.871229', 139900, 'https://www.bukalapak.com/p/fashion-wanita/kaos/dpqfza-jual-baju-cewek-cressida-hyac-871229?campaign_name=&dtm_section=top_promoted&dtm_source=list-pr', ''),
(40, 'TANKTOP WANITA', 37600, 'https://www.bukalapak.com/p/fashion-wanita/kaos/a9wf1f-jual-pevita-tanktop-tanktop-wanita-tanktop-putih-atasan-wanita-baju-atasan?campaign_name=&dtm_s', ''),
(41, 'Wedges, Sandal Wedges', 65000, 'https://www.bukalapak.com/p/fashion-wanita/sandal-2038/sandal-flip-flop-sandal-jepit/we77w-jual-wedges-sandal-wedges-sendal-wedges-sandal-jepit-wanita', ''),
(42, 'Sandal Wedges kate Spades Polkadot', 182000, 'https://www.bukalapak.com/p/fashion-wanita/sandal-2038/sandal-flip-flop-sandal-jepit/8d3ya3-jual-sandal-wedges-kate-spades-polkadot?campaign_name=&dtm', ''),
(43, 'Rok Joger Wanita Celana Panjang', 95000, 'https://www.bukalapak.com/p/fashion-wanita/rok/aggm21-jual-rok-joger-wanita-celana-panjang?campaign_name=&dtm_section=top_promoted&dtm_source=list-pro', ''),
(44, 'CRESSIDA LADIES FEMME OFFICIAL - PRSH.862607', 179900, 'https://www.bukalapak.com/p/fashion-wanita/rok/8ktx1g-jual-cressida-ladies-femme-official-prsh-862607?campaign_name=&dtm_section=top_promoted&dtm_sour', ''),
(45, 'gamis maxi dress hijab fashion', 75000, 'https://www.bukalapak.com/p/fashion-wanita/dress/a2efct-jual-gamis-maxi-dress-hijab-fashion-murah-marbella-dress?campaign_name=&dtm_section=top_promot', ''),
(46, 'HRCN sepatu wanita molly low', 137000, 'https://www.bukalapak.com/p/fashion-wanita/sepatu-16/flat-shoes/dgg3sn-jual-hrcn-sepatu-wanita-molly-low?campaign_name=&from=discount-today&product_ow', ''),
(47, 'Jam Tangan CK Ladies', 180000, 'https://www.bukalapak.com/p/fashion-wanita/jam-tangan/egzg8p-jual-jam-tangan-ladies?campaign_name=&from=discount-today&product_owner=normal_seller', ''),
(48, 'Jam Tangan Wanita Alexandre Christie AC-8453 Silver', 700000, 'https://www.bukalapak.com/p/fashion-wanita/jam-tangan/9vl989-jual-jam-tangan-wanita-alexandre-christie-ac-8453-silver?campaign_name=&from=discount-tod', ''),
(49, 'JAM TANGAN PRIA CASIO G-SHOCK GA150', 123800, 'https://www.bukalapak.com/p/fashion-pria/jam-tangan-171/9anlt5-jual-jam-tangan-pria-casio-g-shock-ga150?campaign_name=&from=navbar_categories&product_', ''),
(50, 'New Casio G-Shock Digital Water Resistance', 127500, 'https://www.bukalapak.com/p/fashion-pria/jam-tangan-171/ehg0so-jual-new-casio-g-shock-digital-water-resistance-jam-tangan-casio-g-shock-digital?campai', '');

-- --------------------------------------------------------

--
-- Table structure for table `perokok`
--

CREATE TABLE `perokok` (
  `id_perokok` int(11) NOT NULL,
  `hwid` varchar(50) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `waktu` datetime NOT NULL,
  `id_rokok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perokok`
--

INSERT INTO `perokok` (`id_perokok`, `hwid`, `lat`, `lng`, `waktu`, `id_rokok`) VALUES
(16, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 01:50:53', 1),
(17, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 01:51:47', 1),
(18, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 01:53:11', 1),
(19, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 02:08:30', 1),
(20, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 02:15:02', 1),
(21, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 02:20:25', 1),
(22, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 02:22:10', 1),
(23, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 02:30:02', 1),
(24, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 02:31:06', 1),
(25, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 03:34:15', 1),
(26, 'd03dd05c4debfe1d', '0.00000000', '106.94821940', '2017-12-18 03:36:22', 1),
(27, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 03:37:50', 1),
(28, 'd03dd05c4debfe1d', '-6.30562070', '106.95006410', '2017-12-18 03:37:53', 1),
(29, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 03:39:40', 1),
(30, 'd03dd05c4debfe1d', '-6.30562070', '106.95006410', '2017-12-18 03:39:41', 1),
(31, 'd03dd05c4debfe1d', '0.00000000', '0.00000000', '2017-12-18 03:40:24', 1),
(32, 'd03dd05c4debfe1d', '-6.30562070', '106.95006410', '2017-12-18 03:40:27', 1),
(33, 'd03dd05c4debfe1d', '-6.30562070', '106.95006410', '2017-12-18 03:45:06', 1),
(34, 'd03dd05c4debfe1d', '99.99999999', '-6.30867950', '2017-12-18 03:50:28', 1),
(35, 'd03dd05c4debfe1d', '99.99999999', '-6.30867950', '2017-12-18 03:51:13', 1),
(36, 'd03dd05c4debfe1d', '-6.30867950', '106.95114280', '2017-12-18 03:51:57', 1),
(37, 'd03dd05c4debfe1d', '-6.30867950', '106.95114280', '2017-12-18 03:52:24', 1),
(38, 'd03dd05c4debfe1d', '-6.30867950', '106.95114280', '2017-12-18 03:54:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rokok`
--

CREATE TABLE `rokok` (
  `id_rokok` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga_btg` int(5) NOT NULL,
  `harga_bks` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rokok`
--

INSERT INTO `rokok` (`id_rokok`, `nama`, `harga_btg`, `harga_bks`) VALUES
(1, 'Contoh', 1500, 20000),
(2, 'A Mild 16', 1250, 20000),
(3, 'A Mild 12', 1083, 13000),
(4, 'A Mild Menthol', 1250, 20000),
(5, 'Djisamsoe 12', 1333, 16000),
(6, 'Magnum', 1000, 16000),
(7, 'Sampoena Kretek', 1000, 12000),
(8, 'Djisamsoe Refill', 1500, 18000),
(9, 'Marlboro Merah', 1100, 22000),
(10, 'Marlboro Gold', 1100, 22000),
(11, 'Marlboro Black Menthol', 1100, 22000),
(12, 'Marlboro Filter', 1000, 20000),
(13, 'Magnum Blue', 1000, 16000),
(14, 'UMild', 937, 15000),
(15, 'UBold', 575, 11500),
(16, 'Djarum Super 12', 1333, 16000),
(17, 'Djarum Coklat', 1000, 12000),
(18, 'MLD 20', 1583, 19000),
(19, 'LA Bold', 900, 18000),
(20, 'LA Light', 1125, 18000),
(21, 'LA Menthol', 1125, 18000),
(22, 'LA Ice', 1125, 18000),
(23, 'Djarum Black', 1125, 18000),
(24, 'Djarum Black Cappuccino', 1125, 18000),
(25, 'Djarum Black Menthol', 1125, 18000),
(26, 'Djarum Black Mild', 1125, 18000),
(27, 'Coklat Filter', 1083, 13000),
(28, 'Coklat Retro', 833, 10000),
(29, 'Gudang Garam Filter', 1333, 16000),
(30, 'Gudang Garam Merah', 1000, 12000),
(31, 'Surya 16', 1250, 20000),
(32, 'Surya Profesional 16', 1000, 16000),
(33, 'Surya Pro Mild', 875, 14000),
(34, 'Signature', 843, 13500),
(35, 'Signature Mild 16', 1000, 16000),
(36, 'Gudang Garam Mild', 937, 15000),
(37, 'Clas Mild 16', 1125, 18000),
(38, 'Clas Mild 16 Menthol', 1125, 18000),
(39, 'Clas Mild 12', 812, 13000),
(40, 'Maxus', 812, 13000),
(41, 'Aroma Slim', 750, 12000),
(42, 'Niko', 875, 10500),
(43, 'Minak Djinggo 10', 750, 7500),
(44, 'Dunhill Mild 20', 1050, 21000),
(45, 'Dunhill Filter', 1000, 16000),
(46, 'Star Mild ', 1125, 18000),
(47, 'Lucky Strike Mild 16', 843, 13500),
(48, 'Lucky Strike Mild 12', 833, 10000),
(49, 'Apache 12', 1000, 12000),
(50, 'Apache Kretek', 833, 10000),
(51, 'Wismilak Hijau', 1083, 13000),
(52, 'Esse Mild', 900, 18000),
(53, 'Esse Change', 900, 18000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `perokok`
--
ALTER TABLE `perokok`
  ADD PRIMARY KEY (`id_perokok`),
  ADD KEY `id_rokok` (`id_rokok`);

--
-- Indexes for table `rokok`
--
ALTER TABLE `rokok`
  ADD PRIMARY KEY (`id_rokok`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `perokok`
--
ALTER TABLE `perokok`
  MODIFY `id_perokok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `rokok`
--
ALTER TABLE `rokok`
  MODIFY `id_rokok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `perokok`
--
ALTER TABLE `perokok`
  ADD CONSTRAINT `perokok_ibfk_1` FOREIGN KEY (`id_rokok`) REFERENCES `rokok` (`id_rokok`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
