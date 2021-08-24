-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2021 pada 03.36
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portalsdm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add beranda', 7, 'add_beranda'),
(26, 'Can change beranda', 7, 'change_beranda'),
(27, 'Can delete beranda', 7, 'delete_beranda'),
(28, 'Can view beranda', 7, 'view_beranda'),
(29, 'Can add berita', 8, 'add_berita'),
(30, 'Can change berita', 8, 'change_berita'),
(31, 'Can delete berita', 8, 'delete_berita'),
(32, 'Can view berita', 8, 'view_berita'),
(33, 'Can add faq', 9, 'add_faq'),
(34, 'Can change faq', 9, 'change_faq'),
(35, 'Can delete faq', 9, 'delete_faq'),
(36, 'Can view faq', 9, 'view_faq'),
(37, 'Can add kontak', 10, 'add_kontak'),
(38, 'Can change kontak', 10, 'change_kontak'),
(39, 'Can delete kontak', 10, 'delete_kontak'),
(40, 'Can view kontak', 10, 'view_kontak'),
(41, 'Can add kategori', 11, 'add_kategori'),
(42, 'Can change kategori', 11, 'change_kategori'),
(43, 'Can delete kategori', 11, 'delete_kategori'),
(44, 'Can view kategori', 11, 'view_kategori'),
(45, 'Can add galeri', 12, 'add_galeri'),
(46, 'Can change galeri', 12, 'change_galeri'),
(47, 'Can delete galeri', 12, 'delete_galeri'),
(48, 'Can view galeri', 12, 'view_galeri'),
(49, 'Can add tentang kami', 13, 'add_tentangkami'),
(50, 'Can change tentang kami', 13, 'change_tentangkami'),
(51, 'Can delete tentang kami', 13, 'delete_tentangkami'),
(52, 'Can view tentang kami', 13, 'view_tentangkami'),
(53, 'Can add subkelompok', 14, 'add_subkelompok'),
(54, 'Can change subkelompok', 14, 'change_subkelompok'),
(55, 'Can delete subkelompok', 14, 'delete_subkelompok'),
(56, 'Can view subkelompok', 14, 'view_subkelompok'),
(57, 'Can add komentar', 15, 'add_komentar'),
(58, 'Can change komentar', 15, 'change_komentar'),
(59, 'Can delete komentar', 15, 'delete_komentar'),
(60, 'Can view komentar', 15, 'view_komentar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$8mLWXOtdOnSp$zU9kkHG9USyhWh1MWstPVOFlYQ2iSkgx8Wql9V8mUwI=', '2021-07-16 03:45:35.804612', 1, 'admin', '', '', 'admin@mail.com', 1, 1, '2021-03-19 01:08:54.258343');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-03-19 01:11:43.687808', '1', 'Subkelompok object (1)', 1, '[{\"added\": {}}]', 14, 1),
(2, '2021-03-19 01:12:01.110213', '2', 'Subkelompok object (2)', 1, '[{\"added\": {}}]', 14, 1),
(3, '2021-03-19 01:12:12.045967', '3', 'Subkelompok object (3)', 1, '[{\"added\": {}}]', 14, 1),
(4, '2021-03-19 01:12:24.428852', '4', 'Subkelompok object (4)', 1, '[{\"added\": {}}]', 14, 1),
(5, '2021-03-19 01:12:36.258213', '5', 'Subkelompok object (5)', 1, '[{\"added\": {}}]', 14, 1),
(6, '2021-03-19 01:12:47.736517', '6', 'Subkelompok object (6)', 1, '[{\"added\": {}}]', 14, 1),
(7, '2021-03-19 01:12:59.590853', '7', 'Subkelompok object (7)', 1, '[{\"added\": {}}]', 14, 1),
(8, '2021-03-19 01:13:12.402870', '8', 'Subkelompok object (8)', 1, '[{\"added\": {}}]', 14, 1),
(9, '2021-03-19 01:13:22.317292', '9', 'Subkelompok object (9)', 1, '[{\"added\": {}}]', 14, 1),
(10, '2021-03-19 01:14:19.259641', '1', 'TentangKami object (1)', 1, '[{\"added\": {}}]', 13, 1),
(11, '2021-03-19 01:14:23.833408', '1', 'TentangKami object (1)', 2, '[]', 13, 1),
(12, '2021-03-19 01:14:40.515793', '2', 'TentangKami object (2)', 1, '[{\"added\": {}}]', 13, 1),
(13, '2021-03-19 01:14:58.086718', '3', 'TentangKami object (3)', 1, '[{\"added\": {}}]', 13, 1),
(14, '2021-03-19 01:56:06.995688', '1', 'Biro Sumber Daya Manusia', 1, '[{\"added\": {}}]', 7, 1),
(15, '2021-03-19 01:59:36.944464', '1', 'PENGUMUMAN HASIL SELEKSI ADMINISTRASI SELEKSI TERBUKA JABATAN KEPALA BIRO SUMBER DAYA MANUSIA BADAN', 1, '[{\"added\": {}}]', 8, 1),
(16, '2021-03-19 02:02:32.890286', '1', 'Kategori object (1)', 1, '[{\"added\": {}}]', 11, 1),
(17, '2021-03-19 02:03:13.268301', '2', 'Kategori object (2)', 1, '[{\"added\": {}}]', 11, 1),
(18, '2021-03-19 02:04:57.855603', '1', 'Galeri object (1)', 1, '[{\"added\": {}}]', 12, 1),
(19, '2021-03-19 02:07:33.093420', '1', 'Kontak object (1)', 1, '[{\"added\": {}}]', 10, 1),
(20, '2021-03-19 02:09:18.061694', '2', 'PENGUMUMAN HASIL SELEKSI ADMINISTRASI SELEKSI TERBUKA JABATAN KEPALA BIRO SUMBER DAYA MANUSIA BADAN', 1, '[{\"added\": {}}]', 8, 1),
(21, '2021-03-19 02:22:19.179161', '2', 'Galeri object (2)', 1, '[{\"added\": {}}]', 12, 1),
(22, '2021-03-23 00:42:48.334552', '1', 'TentangKami object (1)', 2, '[{\"changed\": {\"fields\": [\"Subkelompok1\", \"Subkelompok2\", \"Subkelompok3\"]}}]', 13, 1),
(23, '2021-03-23 00:43:27.603515', '2', 'TentangKami object (2)', 2, '[{\"changed\": {\"fields\": [\"Subkelompok1\", \"Subkelompok2\", \"Subkelompok3\"]}}]', 13, 1),
(24, '2021-03-23 00:44:01.883964', '3', 'TentangKami object (3)', 2, '[{\"changed\": {\"fields\": [\"Subkelompok1\", \"Subkelompok2\", \"Subkelompok3\"]}}]', 13, 1),
(25, '2021-03-23 01:34:35.308776', '1', 'Komentar object (1)', 1, '[{\"added\": {}}]', 15, 1),
(26, '2021-03-24 05:41:42.668356', '1', 'TentangKami object (1)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 13, 1),
(27, '2021-03-24 05:42:02.801508', '2', 'TentangKami object (2)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 13, 1),
(28, '2021-03-24 05:42:12.637196', '3', 'TentangKami object (3)', 2, '[{\"changed\": {\"fields\": [\"Photo\"]}}]', 13, 1),
(29, '2021-03-26 03:14:00.361756', '1', 'Galeri object (1)', 2, '[{\"changed\": {\"fields\": [\"Photo galeri\"]}}]', 12, 1),
(30, '2021-03-26 03:22:13.753400', '1', 'PENGUMUMAN HASIL SELEKSI ADMINISTRASI SELEKSI TERBUKA JABATAN KEPALA BIRO SUMBER DAYA MANUSIA BADAN', 2, '[{\"changed\": {\"fields\": [\"Isi\"]}}]', 8, 1),
(31, '2021-07-16 04:03:32.478207', '2', 'BIRO SUMBER DAYA MANUSIA', 1, '[{\"added\": {}}]', 7, 1),
(32, '2021-07-16 04:06:03.213117', '2', 'BIRO SUMBER DAYA MANUSIA', 2, '[{\"changed\": {\"fields\": [\"Deskripsi\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'MainApp', 'beranda'),
(8, 'MainApp', 'berita'),
(9, 'MainApp', 'faq'),
(12, 'MainApp', 'galeri'),
(11, 'MainApp', 'kategori'),
(15, 'MainApp', 'komentar'),
(10, 'MainApp', 'kontak'),
(14, 'MainApp', 'subkelompok'),
(13, 'MainApp', 'tentangkami'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'MainApp', '0001_initial', '2021-03-18 08:24:14.993253'),
(2, 'MainApp', '0002_auto_20210308_1043', '2021-03-18 08:24:15.076030'),
(3, 'MainApp', '0003_auto_20210308_1045', '2021-03-18 08:24:15.119912'),
(4, 'MainApp', '0004_auto_20210308_1058', '2021-03-18 08:24:15.175763'),
(5, 'MainApp', '0005_auto_20210308_1101', '2021-03-18 08:24:15.228624'),
(6, 'MainApp', '0006_auto_20210308_1106', '2021-03-18 08:24:15.319379'),
(7, 'MainApp', '0007_auto_20210308_1250', '2021-03-18 08:24:15.377225'),
(8, 'MainApp', '0008_auto_20210308_1706', '2021-03-18 08:24:16.037459'),
(9, 'MainApp', '0009_kontak', '2021-03-18 08:24:16.333668'),
(10, 'MainApp', '0010_galeri_kategori', '2021-03-18 08:24:17.305068'),
(11, 'MainApp', '0011_berita_create_by', '2021-03-18 08:24:19.002530'),
(12, 'MainApp', '0012_auto_20210310_1532', '2021-03-18 08:24:19.760504'),
(13, 'MainApp', '0013_auto_20210310_1534', '2021-03-18 08:24:20.410764'),
(14, 'MainApp', '0014_auto_20210315_1334', '2021-03-18 08:24:21.197703'),
(15, 'MainApp', '0015_auto_20210315_1400', '2021-03-18 08:24:21.232607'),
(16, 'MainApp', '0016_auto_20210317_0823', '2021-03-18 08:24:21.721259'),
(17, 'MainApp', '0017_tentangkami', '2021-03-18 08:24:22.480230'),
(18, 'MainApp', '0018_tentangkami_rule', '2021-03-18 08:24:22.891140'),
(19, 'MainApp', '0019_remove_tentangkami_rule', '2021-03-18 08:24:23.476563'),
(20, 'contenttypes', '0001_initial', '2021-03-18 08:24:24.175693'),
(21, 'auth', '0001_initial', '2021-03-18 08:24:27.117866'),
(22, 'admin', '0001_initial', '2021-03-18 08:24:37.349468'),
(23, 'admin', '0002_logentry_remove_auto_add', '2021-03-18 08:24:39.068864'),
(24, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-18 08:24:39.173582'),
(25, 'contenttypes', '0002_remove_content_type_name', '2021-03-18 08:24:40.114070'),
(26, 'auth', '0002_alter_permission_name_max_length', '2021-03-18 08:24:41.001697'),
(27, 'auth', '0003_alter_user_email_max_length', '2021-03-18 08:24:42.391981'),
(28, 'auth', '0004_alter_user_username_opts', '2021-03-18 08:24:42.469783'),
(29, 'auth', '0005_alter_user_last_login_null', '2021-03-18 08:24:44.239036'),
(30, 'auth', '0006_require_contenttypes_0002', '2021-03-18 08:24:44.385655'),
(31, 'auth', '0007_alter_validators_add_error_messages', '2021-03-18 08:24:44.513317'),
(32, 'auth', '0008_alter_user_username_max_length', '2021-03-18 08:24:45.276261'),
(33, 'auth', '0009_alter_user_last_name_max_length', '2021-03-18 08:24:46.157905'),
(34, 'auth', '0010_alter_group_name_max_length', '2021-03-18 08:24:47.084428'),
(35, 'auth', '0011_update_proxy_permissions', '2021-03-18 08:24:47.189148'),
(36, 'auth', '0012_alter_user_first_name_max_length', '2021-03-18 08:24:48.010948'),
(37, 'sessions', '0001_initial', '2021-03-18 08:24:48.503631'),
(38, 'MainApp', '0020_auto_20210319_0806', '2021-03-19 01:06:17.914247'),
(39, 'MainApp', '0021_komentar', '2021-03-19 02:46:55.657054'),
(40, 'MainApp', '0022_auto_20210323_0739', '2021-03-23 00:40:00.174024'),
(41, 'MainApp', '0023_remove_tentangkami_deskripsi', '2021-03-24 05:04:58.851485'),
(42, 'MainApp', '0024_tentangkami_photo', '2021-03-24 05:38:25.615435'),
(43, 'MainApp', '0025_auto_20210324_1238', '2021-03-24 05:38:42.289835'),
(44, 'MainApp', '0026_berita_image', '2021-03-26 03:11:51.021321'),
(45, 'MainApp', '0027_auto_20210326_1016', '2021-03-26 03:16:06.862622');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4ox8mvhhnshz2wbcjungd2gjw4cxlppu', '.eJxVjEEOwiAQRe_C2hBmkClx6d4zkGGgUjWQlHbVeHdt0oVu_3vvbyrwupSw9jyHKamLAnX63SLLM9cdpAfXe9PS6jJPUe-KPmjXt5by63q4fweFe_nWAgYzRBE4-9FHgQGJ7ACEaNgnZxDBCNvsRmCynhghkbeYhCw4r94fxT42vA:1lOwGW:wYjuo6XDVPitQjDqjIa3YURhPPCvt-iGG__t0FiSFrI', '2021-04-07 05:41:12.262686'),
('c9jpgpf4ijhqdjzo6o299rzzemiqem0y', '.eJxVjEEOwiAQRe_C2hBmkClx6d4zkGGgUjWQlHbVeHdt0oVu_3vvbyrwupSw9jyHKamLAnX63SLLM9cdpAfXe9PS6jJPUe-KPmjXt5by63q4fweFe_nWAgYzRBE4-9FHgQGJ7ACEaNgnZxDBCNvsRmCynhghkbeYhCw4r94fxT42vA:1m4En9:7gen2VdLBk-taIOV1400_-i_cfSWFLw_PGUgi9YIj4w', '2021-07-30 03:45:35.997166'),
('oc5nw82os3vhmglevu1z21whc9dhvkgk', '.eJxVjEEOwiAQRe_C2hBmkClx6d4zkGGgUjWQlHbVeHdt0oVu_3vvbyrwupSw9jyHKamLAnX63SLLM9cdpAfXe9PS6jJPUe-KPmjXt5by63q4fweFe_nWAgYzRBE4-9FHgQGJ7ACEaNgnZxDBCNvsRmCynhghkbeYhCw4r94fxT42vA:1lN3dS:aGKkdu_UKk8SLaNYKQlKcGELTp-uJbRsTDNug9tMyEE', '2021-04-02 01:09:06.970345'),
('y9pfdmgml2lcszf39bdz889tcsbwtnel', '.eJxVjEEOwiAQRe_C2hBmkClx6d4zkGGgUjWQlHbVeHdt0oVu_3vvbyrwupSw9jyHKamLAnX63SLLM9cdpAfXe9PS6jJPUe-KPmjXt5by63q4fweFe_nWAgYzRBE4-9FHgQGJ7ACEaNgnZxDBCNvsRmCynhghkbeYhCw4r94fxT42vA:1lPcte:gD7tLCiEthA7_4atec0hNVpni-dnD3dF3Cv1h8-x5oc', '2021-04-09 03:12:26.706775'),
('yx3lrs9k8qvf7sk025kzelkbahdbklnt', '.eJxVjEEOwiAQRe_C2hBmkClx6d4zkGGgUjWQlHbVeHdt0oVu_3vvbyrwupSw9jyHKamLAnX63SLLM9cdpAfXe9PS6jJPUe-KPmjXt5by63q4fweFe_nWAgYzRBE4-9FHgQGJ7ACEaNgnZxDBCNvsRmCynhghkbeYhCw4r94fxT42vA:1lOV66:a-B3IGSJ2oBhkIFu2slJUcvjPgQxf1W6l7DsA68RF1w', '2021-04-06 00:40:38.421720');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainapp_beranda`
--

CREATE TABLE `mainapp_beranda` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `Photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainapp_beranda`
--

INSERT INTO `mainapp_beranda` (`id`, `judul`, `deskripsi`, `Photo`) VALUES
(1, 'Biro Sumber Daya Manusia', 'Badan Pengawas Obat dan Makanan', 'beranda/DSC03157.JPG'),
(2, 'BIRO SUMBER DAYA MANUSIA', 'Kegiatan Integrasi Data Pegawai BPOM dan BKN', 'beranda/DSC02933.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainapp_berita`
--

CREATE TABLE `mainapp_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` longtext NOT NULL,
  `tanggal_berita` datetime(6) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `create_by` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainapp_berita`
--

INSERT INTO `mainapp_berita` (`id`, `judul`, `isi`, `tanggal_berita`, `Photo`, `create_by`, `image`) VALUES
(1, 'PENGUMUMAN HASIL SELEKSI ADMINISTRASI SELEKSI TERBUKA JABATAN KEPALA BIRO SUMBER DAYA MANUSIA BADAN', 'Menindaklanjuti pengumuman Ketua Panitia Seleksi Terbuka Badan POM Nomor KP.05.11.2.24.01.21.01 tanggal 07 Januari 2021 tentang Pengumuman Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (Eselon II) Badan POM Tahun 2021, kami sampaikan hal hal sebagai berikut:', '2021-03-19 01:59:36.769930', 'berita/DSC03117.JPG', 'admin', 'image2'),
(2, 'PENGUMUMAN HASIL SELEKSI ADMINISTRASI SELEKSI TERBUKA JABATAN KEPALA BIRO SUMBER DAYA MANUSIA BADAN', 'PENGUMUMAN HASIL SELEKSI ADMINISTRASI SELEKSI TERBUKA JABATAN KEPALA BIRO SUMBER DAYA MANUSIA BADAN', '2021-03-19 02:09:18.014817', 'berita/DSC02969.JPG', 'admin', 'image2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainapp_faq`
--

CREATE TABLE `mainapp_faq` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainapp_galeri`
--

CREATE TABLE `mainapp_galeri` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `kategori_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainapp_galeri`
--

INSERT INTO `mainapp_galeri` (`id`, `keterangan`, `Photo`, `kategori_id_id`) VALUES
(1, 'Integrasi SAPK BKN dan SIASN BPOM', 'galeri/01.jpg', 1),
(2, 'Acara Capacity Building Biro SDM', 'galeri/DSC03004.JPG', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainapp_kategori`
--

CREATE TABLE `mainapp_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainapp_kategori`
--

INSERT INTO `mainapp_kategori` (`id`, `nama`) VALUES
(1, 'Fullday'),
(2, 'Fullboard');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainapp_komentar`
--

CREATE TABLE `mainapp_komentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `komentar` longtext NOT NULL,
  `tanggal_berita` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainapp_komentar`
--

INSERT INTO `mainapp_komentar` (`id`, `nama`, `email`, `komentar`, `tanggal_berita`) VALUES
(1, 'sri aprianti', 'sriaprianti@mail.com', 'semoga beruntung!!', '2021-03-23 01:34:35.170147');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainapp_kontak`
--

CREATE TABLE `mainapp_kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `nohp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainapp_kontak`
--

INSERT INTO `mainapp_kontak` (`id`, `nama`, `alamat`, `email`, `nohp`) VALUES
(1, 'Badan Pengawas Obat dan Makanan', 'Jl. Percetakan Negara No. 23 Jakarta Pusat 10560 Indonesia', 'halopom@pom.go.id', '(021) 4244691');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainapp_subkelompok`
--

CREATE TABLE `mainapp_subkelompok` (
  `id` int(11) NOT NULL,
  `nm_subkelompok` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainapp_subkelompok`
--

INSERT INTO `mainapp_subkelompok` (`id`, `nm_subkelompok`) VALUES
(1, 'Subkelompok Substansi Perencanaan, Pengadaan dan Mutasi Pegawai'),
(2, 'Subkelompok Substansi Pengelolaan data dan Sistem Informasi Sumber Daya Manusia'),
(3, 'Subkelompok Substansi Tata Usaha'),
(4, 'Subkelompok Substansi Pengelolaan Karier Jabatan Fungsional'),
(5, 'Subkelompok Substansi Pengelolaan Karier Jabatan Struktural'),
(6, 'Subkelompok Substansi Manajemen Talenta'),
(7, 'Subkelompok Substansi Pengelolaan Kinerja Sumber Daya Manusia'),
(8, 'Subkelompok Substansi Pengelolaan Disiplin'),
(9, 'Subkelompok Substansi Kesejahteraan, Gaji dan Tunjangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainapp_tentangkami`
--

CREATE TABLE `mainapp_tentangkami` (
  `id` int(11) NOT NULL,
  `nm_kelompok` varchar(100) NOT NULL,
  `subkelompok1` varchar(100) DEFAULT NULL,
  `subkelompok2` varchar(100) DEFAULT NULL,
  `subkelompok3` varchar(100) DEFAULT NULL,
  `Photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainapp_tentangkami`
--

INSERT INTO `mainapp_tentangkami` (`id`, `nm_kelompok`, `subkelompok1`, `subkelompok2`, `subkelompok3`, `Photo`) VALUES
(1, 'Kelompok Substansi Perencanaan, Pengadaan, data dan Informasi Sumber Daya Manusia', 'Subkelompok Substansi Perencanaan, Pengadaan dan Mutasi Pegawai', 'Subkelompok Substansi Pengelolaan data dan Sistem Informasi Sumber Daya Manusia', 'Subkelompok Substansi Tata Usaha', 'tentangkami/2.png'),
(2, 'Kelompok Substansi Pengelolaan Karier Sumber Daya Manusia', 'Subkelompok Substansi Pengelolaan Karier Jabatan Fungsional', 'Subkelompok Substansi Pengelolaan Karier Jabatan Struktural', 'Subkelompok Substansi Manajemen Talenta', 'tentangkami/3.png'),
(3, 'Kelompok Substansi Pengelolaan Kinerja dan Kesejahteraan Sumber Daya Manusia', 'Subkelompok Substansi Pengelolaan Kinerja Sumber Daya Manusia', 'Subkelompok Substansi Pengelolaan Disiplin', 'Subkelompok Substansi Kesejahteraan, Gaji dan Tunjangan', 'tentangkami/1.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `mainapp_beranda`
--
ALTER TABLE `mainapp_beranda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mainapp_berita`
--
ALTER TABLE `mainapp_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mainapp_faq`
--
ALTER TABLE `mainapp_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mainapp_galeri`
--
ALTER TABLE `mainapp_galeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MainApp_galeri_kategori_id_id_21034ad7_fk_MainApp_kategori_id` (`kategori_id_id`);

--
-- Indeks untuk tabel `mainapp_kategori`
--
ALTER TABLE `mainapp_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mainapp_komentar`
--
ALTER TABLE `mainapp_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mainapp_kontak`
--
ALTER TABLE `mainapp_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mainapp_subkelompok`
--
ALTER TABLE `mainapp_subkelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mainapp_tentangkami`
--
ALTER TABLE `mainapp_tentangkami`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `mainapp_beranda`
--
ALTER TABLE `mainapp_beranda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mainapp_berita`
--
ALTER TABLE `mainapp_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mainapp_faq`
--
ALTER TABLE `mainapp_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mainapp_galeri`
--
ALTER TABLE `mainapp_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mainapp_kategori`
--
ALTER TABLE `mainapp_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mainapp_komentar`
--
ALTER TABLE `mainapp_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mainapp_kontak`
--
ALTER TABLE `mainapp_kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mainapp_subkelompok`
--
ALTER TABLE `mainapp_subkelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `mainapp_tentangkami`
--
ALTER TABLE `mainapp_tentangkami`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `mainapp_galeri`
--
ALTER TABLE `mainapp_galeri`
  ADD CONSTRAINT `MainApp_galeri_kategori_id_id_21034ad7_fk_MainApp_kategori_id` FOREIGN KEY (`kategori_id_id`) REFERENCES `mainapp_kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
