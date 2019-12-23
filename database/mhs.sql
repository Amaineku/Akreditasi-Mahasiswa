-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 07:28 PM
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
  `tanggal_lahir` date NOT NULL,
  `no_hp` int(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status_pernikahan` enum('menikah','belum menikah') NOT NULL,
  `prodi` enum('ilmu komputer','sistem informasi','manajemen bisnis') NOT NULL,
  `angkatan` enum('4','5','6','7') NOT NULL,
  `sosmed` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personal_sertification`
--

CREATE TABLE `personal_sertification` (
  `id_personal_sertification` int(5) NOT NULL,
  `nama_sertification` varchar(50) NOT NULL,
  `nama_lembaga` varchar(50) NOT NULL,
  `upload_file` text NOT NULL,
  `tahun` longblob NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id_personal_details` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_sertification`
--
ALTER TABLE `personal_sertification`
  MODIFY `id_personal_sertification` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_experience`
--
ALTER TABLE `project_experience`
  MODIFY `id_project_experience` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `research_outcome`
--
ALTER TABLE `research_outcome`
  MODIFY `id_research_outcome` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id_skills` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `training_seminar_workshop`
--
ALTER TABLE `training_seminar_workshop`
  MODIFY `id_training_seminar_workshop` int(5) NOT NULL AUTO_INCREMENT;

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
