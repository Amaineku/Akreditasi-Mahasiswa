-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2019 at 04:57 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id_education` int(5) NOT NULL,
  `nama_education` varchar(50) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id_education`, `nama_education`, `tahun`, `kota`, `id_user`) VALUES
(13, 'MAN 1 ACEH TENGAH', '2017', 'Aceh', 1),
(16, 'ESQ BUSINESS SCHOOL', '2021', 'JAKARTA', 2);

-- --------------------------------------------------------

--
-- Table structure for table `leadership_experience`
--

CREATE TABLE `leadership_experience` (
  `id_leadership_experience` int(5) NOT NULL,
  `nama_kegiatan` varchar(30) NOT NULL,
  `posisi` varchar(30) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leadership_experience`
--

INSERT INTO `leadership_experience` (`id_leadership_experience`, `nama_kegiatan`, `posisi`, `tahun`, `deskripsi`, `id_user`) VALUES
(3, 'Pemilihan Raya BEM', 'Penyelenggara', '2019', 'Ajang demokrasi Pemilihan Ketua Bem', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `id_personal_details` int(5) NOT NULL,
  `nim` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status_pernikahan` varchar(20) NOT NULL,
  `prodi` varchar(25) NOT NULL,
  `angkatan` varchar(25) NOT NULL,
  `sosmed` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`id_personal_details`, `nim`, `nama`, `tempat_lahir`, `tanggal_lahir`, `no_hp`, `email`, `alamat`, `status_pernikahan`, `prodi`, `angkatan`, `sosmed`, `id_user`) VALUES
(1, 1710130005, 'Iwan Sinanto Ate', 'Aceh', '01-09-1998', 822131685, 'iwanate01@gmail.com', 'Jeruk Purut No.40', 'Belum Menikah', 'Ilmu Komputer', '5', '@iwanhns', 1),
(3, 1710130007, 'Aidil Zartesa', 'Bekasi', '2019-12-18', 8221316, 'm.aidil.z@students.esqbs.ac.id', 'Pekanbaru', 'Belum Menikah', 'Ilmu Komputer', '5', '@duldite', 2),
(4, 1710130010, 'Risnawati', 'Sukabumi', '2019-12-18', 2345678, 'risnawati@students.esqbs.ac.id', 'Sukabumi', 'Belum Menikah', 'Ilmu Komputer', '5', '@Risnawati', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_sertification`
--

CREATE TABLE `personal_sertification` (
  `id_personal_sertification` int(5) NOT NULL,
  `nama_sertification` varchar(50) NOT NULL,
  `nama_lembaga` varchar(50) NOT NULL,
  `upload_file` text NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_sertification`
--

INSERT INTO `personal_sertification` (`id_personal_sertification`, `nama_sertification`, `nama_lembaga`, `upload_file`, `tahun`, `id_user`) VALUES
(1, 'Programmig Mobile', 'MDB PT. ASTRA', 'Surat undangan debat pemira bu asri 080.docx', '2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_experience`
--

CREATE TABLE `project_experience` (
  `id_project_experience` int(5) NOT NULL,
  `nama_project` varchar(30) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `tools_teknologi` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_experience`
--

INSERT INTO `project_experience` (`id_project_experience`, `nama_project`, `tahun`, `tools_teknologi`, `deskripsi`, `id_user`) VALUES
(11, 'Sistem Alumni', '2018', 'Pendataan Alumni', 'Karna tahun sebelumnya input data alumni dengan menual', 1);

-- --------------------------------------------------------

--
-- Table structure for table `research_outcome`
--

CREATE TABLE `research_outcome` (
  `id_research_outcome` int(5) NOT NULL,
  `nama_research_outcome` varchar(30) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research_outcome`
--

INSERT INTO `research_outcome` (`id_research_outcome`, `nama_research_outcome`, `tahun`, `deskripsi`, `kategori`, `id_user`) VALUES
(1, 'Penelitian Jadwal Kuliah', '2019', 'Ujian Akhir', 'Programmer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id_skills` int(5) NOT NULL,
  `nama_skills` varchar(30) NOT NULL,
  `tool_skills` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id_skills`, `nama_skills`, `tool_skills`, `id_user`) VALUES
(1, 'Web Programming', 'Laravel', 1),
(2, 'Database', 'Mysql', 1);

-- --------------------------------------------------------

--
-- Table structure for table `training_seminar_workshop`
--

CREATE TABLE `training_seminar_workshop` (
  `id_training_seminar_workshop` int(5) NOT NULL,
  `nama_kegiatan` varchar(50) NOT NULL,
  `posisi` varchar(30) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `lokasi` varchar(30) NOT NULL,
  `upload_file` longblob NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training_seminar_workshop`
--

INSERT INTO `training_seminar_workshop` (`id_training_seminar_workshop`, `nama_kegiatan`, `posisi`, `tahun`, `lokasi`, `upload_file`, `kategori`, `id_user`) VALUES
(1, 'a', 'a', 'a', 'a', 0x6d68732e73716c, 'a', 1),
(3, 'Training Cloud Computing', 'Peserta', '2019', 'Bandung ITB', 0x6d68732e73716c, 'Seminar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `nama`) VALUES
(1, 'i.sinanto.a@students.esqbs.ac.id', 'esqbs165', 'Iwan Sinanto Ate'),
(2, 'm.aidil.z@students.esqbs.ac.id', 'esqbs165', 'Aidil Zartesa'),
(3, 'risnawati@students.esqbs.ac.id', 'esqbs165', 'Risnawati');

-- --------------------------------------------------------

--
-- Table structure for table `working_experience`
--

CREATE TABLE `working_experience` (
  `id_working_experience` int(5) NOT NULL,
  `nama_working_experience` varchar(50) NOT NULL,
  `posisi` varchar(30) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `tahun_berakhir` year(4) NOT NULL,
  `upload_file` tinyblob NOT NULL,
  `deskripsi` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `writing_experience`
--

CREATE TABLE `writing_experience` (
  `id_writing_experience` int(11) NOT NULL,
  `judul_karya` varchar(30) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  `nama_jurnal` varchar(30) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `volume` varchar(30) NOT NULL,
  `halaman` int(30) NOT NULL,
  `link` varchar(30) NOT NULL,
  `upload_file` text NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `writing_experience`
--

INSERT INTO `writing_experience` (`id_writing_experience`, `judul_karya`, `nama_dosen`, `nama_jurnal`, `tahun`, `volume`, `halaman`, `link`, `upload_file`, `kategori`, `id_user`) VALUES
(5, 'Penelitan Sawit', 'Ahlijati Nuraminah M.Kom ', 'Probabilitas Sawit', '2019', '5', 150, 'www.sawit.com', 'FORM PENILAIAN.docx', 'LPPM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id_education`),
  ADD KEY `education_ibfk_1` (`id_user`);

--
-- Indexes for table `leadership_experience`
--
ALTER TABLE `leadership_experience`
  ADD PRIMARY KEY (`id_leadership_experience`),
  ADD KEY `leadership_experience_ibfk_1` (`id_user`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`id_personal_details`);

--
-- Indexes for table `personal_sertification`
--
ALTER TABLE `personal_sertification`
  ADD PRIMARY KEY (`id_personal_sertification`),
  ADD KEY `personal_sertification_ibfk_1` (`id_user`);

--
-- Indexes for table `project_experience`
--
ALTER TABLE `project_experience`
  ADD PRIMARY KEY (`id_project_experience`),
  ADD KEY `project_experience_ibfk_1` (`id_user`);

--
-- Indexes for table `research_outcome`
--
ALTER TABLE `research_outcome`
  ADD PRIMARY KEY (`id_research_outcome`),
  ADD KEY `research_outcome_ibfk_1` (`id_user`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id_skills`),
  ADD KEY `skills_ibfk_1` (`id_user`);

--
-- Indexes for table `training_seminar_workshop`
--
ALTER TABLE `training_seminar_workshop`
  ADD PRIMARY KEY (`id_training_seminar_workshop`),
  ADD KEY `training_seminar_workshop_ibfk_1` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `working_experience`
--
ALTER TABLE `working_experience`
  ADD PRIMARY KEY (`id_working_experience`),
  ADD KEY `working_experience_ibfk_1` (`id_user`);

--
-- Indexes for table `writing_experience`
--
ALTER TABLE `writing_experience`
  ADD PRIMARY KEY (`id_writing_experience`),
  ADD KEY `writing_experience_ibfk_1` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id_education` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `leadership_experience`
--
ALTER TABLE `leadership_experience`
  MODIFY `id_leadership_experience` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_details`
--
ALTER TABLE `personal_details`
  MODIFY `id_personal_details` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_sertification`
--
ALTER TABLE `personal_sertification`
  MODIFY `id_personal_sertification` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_experience`
--
ALTER TABLE `project_experience`
  MODIFY `id_project_experience` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `research_outcome`
--
ALTER TABLE `research_outcome`
  MODIFY `id_research_outcome` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id_skills` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `training_seminar_workshop`
--
ALTER TABLE `training_seminar_workshop`
  MODIFY `id_training_seminar_workshop` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `working_experience`
--
ALTER TABLE `working_experience`
  MODIFY `id_working_experience` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writing_experience`
--
ALTER TABLE `writing_experience`
  MODIFY `id_writing_experience` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `leadership_experience`
--
ALTER TABLE `leadership_experience`
  ADD CONSTRAINT `leadership_experience_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `personal_sertification`
--
ALTER TABLE `personal_sertification`
  ADD CONSTRAINT `personal_sertification_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `project_experience`
--
ALTER TABLE `project_experience`
  ADD CONSTRAINT `project_experience_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `research_outcome`
--
ALTER TABLE `research_outcome`
  ADD CONSTRAINT `research_outcome_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `training_seminar_workshop`
--
ALTER TABLE `training_seminar_workshop`
  ADD CONSTRAINT `training_seminar_workshop_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `working_experience`
--
ALTER TABLE `working_experience`
  ADD CONSTRAINT `working_experience_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `writing_experience`
--
ALTER TABLE `writing_experience`
  ADD CONSTRAINT `writing_experience_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
