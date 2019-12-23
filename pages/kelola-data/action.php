<?php 
	$table	= $_GET['table'];
	$action = $_GET['action'];
	$dir	= "../../config/kelola-data/";

	if ($table == "education") {
	 	include $dir . 'education.php';
		$do = new education();

	 	if ($action == "store") {
	 		$do->store($_POST['nama_education'], $_POST['tahun'], $_POST['kota'], $_POST['id_user']);
	 		header("location:education.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id_education'], $_POST['nama_education'],$_POST['tahun'], $_POST['kota']);
	 		header("location:education.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id_education']);
			header("location:education.php");
	 	}
	} elseif ($table == "project_experience") {
	 	include $dir . 'project_experience.php';
		$do = new project_experience();

	 	if ($action == "store") {
	 		$do->store($_POST['nama_project'], $_POST['tahun'], $_POST['tools_teknologi'], $_POST['deskripsi'], $_POST['id_user']);
	 		header("location:project-experience.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id_project_experience'], $_POST['nama_project'], $_POST['tahun'], $_POST['tools_teknologi'], $_POST['deskripsi']);
	 		header("location:project-experience.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id_project_experience']);
			header("location:project-experience.php");
	 	}
	} elseif ($table == "leadership_experience") {
	 	include $dir . 'leadership_experience.php';
		$do = new leadership_experience();

	 	if ($action == "store") {
	 		$do->store($_POST['nama_kegiatan'], $_POST['posisi'], $_POST['tahun'], $_POST['deskripsi'], $_POST['id_user']);
	 		header("location:leadership-experience.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id_leadership_experience'], $_POST['nama_kegiatan'], $_POST['posisi'], $_POST['tahun'], $_POST['deskripsi']);
	 		header("location:leadership-experience.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id_leadership_experience']);
			header("location:leadership-experience.php");
	 	}
	} elseif ($table == "writing_experience") {
	 	include $dir . 'writing_experience.php';
		$do = new writing_experience();

	 	if ($action == "store") {
	 		$do->store($_POST['judul_karya'], $_POST['nama_dosen'], $_POST['nama_jurnal'], $_POST['tahun'], $_POST['volume'], $_POST['halaman'], $_POST['link'], $_POST['upload_file'], $_POST['kategori'], $_POST['id_user']);
	 		header("location:writing-experience.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id_writing_experience'], $_POST['judul_karya'], $_POST['nama_dosen'], $_POST['nama_jurnal'], $_POST['tahun'], $_POST['volume'], $_POST['halaman'], $_POST['link'], $_POST['upload_file'], $_POST['kategori']);
	 		header("location:writing-experience.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id_writing_experience']);
			header("location:writing-experience.php");
	 	}
	} elseif ($table == "penelitian") {
	 	include $dir . 'penelitian.php';
		$do = new penelitian();

	 	if ($action == "store") {
	 		$do->store($_POST['tema'], $_POST['judul'], $_POST['deskripsi'], $_POST['tanggal'], $_POST['tempat'], $_POST['sumber_pembiayaan'], $_POST['biaya'], $_POST['evaluasi'], $_POST['id_matakuliah'], $_POST['file'], $_POST['id_user']);
	 		header("location:penelitian.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id'], $_POST['tema'], $_POST['judul'], $_POST['deskripsi'], $_POST['tempat'], $_POST['tanggal'], $_POST['sumber_pembiayaan'], $_POST['biaya'], $_POST['evaluasi'], $_POST['id_matakuliah'], $_POST['file']);
	 		header("location:penelitian.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id']);
			header("location:penelitian.php");
	 	}
	} elseif ($table == "hasil-kerjasama") {
	 	include $dir . 'hasil-kerjasama.php';
		$do = new hasilKerjasama();

	 	if ($action == "store") {
	 		$do->store($_POST['judul_kegiatan'], $_POST['lembaga_mitra'], $_POST['tingkat'], $_POST['tanggal'], $_POST['durasi'], $_POST['manfaat'], $_POST['file'], $_POST['id_user']);
	 		header("location:hasil-kerjasama.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id'], $_POST['judul_kegiatan'], $_POST['lembaga_mitra'], $_POST['tingkat'], $_POST['tanggal'], $_POST['durasi'], $_POST['manfaat'], $_POST['file']);
	 		header("location:hasil-kerjasama.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id']);
			header("location:hasil-kerjasama.php");
	 	}
	} elseif ($table == "user") {
	 	include $dir . 'user.php';
		$do = new user();

	 	if ($action == "store") {
	 		$do->store($_POST['email'], $_POST['password'], $_POST['level']);
	 		header("location:user.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id'], $_POST['email'], $_POST['password'], $_POST['level']);
	 		header("location:user.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id']);
			header("location:user.php");
	 	}
	} elseif ($table == "skills") {
	 	include $dir . 'skill-experience.php';
		$do = new skills();

	 	if ($action == "store") {
	 		$do->store($_POST['nama_skills'], $_POST['tool_skills'], $_POST['id_user']);
	 		header("location:skill-experience.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id_skills'], $_POST['nama_skills'],$_POST['tool_skills']);
	 		header("location:skill-experience.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id_skills']);
			header("location:skill-experience.php");
	 	}
	 }elseif ($table == "research_outcome") {
	 	include $dir . 'research-outcome.php';
		$do = new research_outcome();

	 	if ($action == "store") {
	 		$do->store($_POST['nama_research_outcome'], $_POST['tahun'], $_POST['deskripsi'],$_POST['kategori'],  $_POST['id_user']);
	 		header("location:research-outcome.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id_research_outcome'], $_POST['nama_research_outcome'],$_POST['tahun'],$_POST['deskripsi'],$_POST['kategori']);
	 		header("location:research-outcome.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id_research_outcome']);
			header("location:research-outcome.php");
	 	}
	 }elseif ($table == "personal_sertification") {
	 	include $dir . 'personal_sertification.php';
		$do = new personal_sertification();

	 	if ($action == "store") {
	 		$do->store($_POST['nama_sertification'], $_POST['nama_lembaga'], $_POST['tahun'], $_POST['upload_file'], $_POST['id_user']);
	 		header("location:personal-sertification.php");
	 	} elseif ($action == "update") {
	 		$do->update($_POST['id_personal_sertification'], $_POST['nama_sertification'], $_POST['nama_lembaga'], $_POST['tahun'], $_POST['upload_file']);
	 		header("location:personal-sertification.php");
	 	} elseif ($action == "delete") {
	 		$do->delete($_POST['id_personal_sertification']);
			header("location:personal-sertification.php");
	 	}
	 }
?>