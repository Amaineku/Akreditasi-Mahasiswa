<?php
	$dir1 = "";
	$dir2 = "../../config/public/";
    if(isset($_SESSION['page']) && isset($_SESSION['subpage'])) {
	    if($_SESSION['page']=='Dashboard') {
	    	//include $dir2 . 'dashboard.php';
			//$db 	= new ();
			//$table	= '';
	    } else if($_SESSION['page']=='kelola') {
	    	if($_SESSION['subpage']=='educatin') {
	    	} else if($_SESSION['subpage']=='prestasi-dosen') {
	    		include $dir1 . 'prestasi-dosen.php';
				$db 		= new prestasiDosen();
			    $table		= 'prestasi-dosen';
			    $tingkat	= array("Dalam Kampus", "Antar Kampus", "Kabupaten / Kota", "Provinsi", "Nasional", "Internasional");
	    	} else if($_SESSION['subpage']=='prestasi-mahasiswa') {
	    		include $dir1 . 'prestasi-mahasiswa.php';
				$db 		= new prestasiMahasiswa();
			    $table		= 'prestasi-mahasiswa';
			    $tingkat	= array("Dalam Kampus", "Antar Kampus", "Kabupaten / Kota", "Provinsi", "Nasional", "Internasional");
	    	} else if($_SESSION['subpage']=='pengabdian-masyarakat') {
	    		include $dir1 . 'pengabdian-masyarakat.php';
				$db 	= new pengabdianMasyarakat();
			    $table	= 'pengabdian-masyarakat';
	    	} else if($_SESSION['subpage']=='penelitian') {
	    		include $dir1 . 'penelitian.php';
				$db 	= new penelitian();
			    $table	= 'penelitian';
	    	} else if($_SESSION['subpage']=='hasil-kerjasama') {
	    		include $dir1 . 'hasil-kerjasama.php';
				$db 		= new hasilKerjasama();
			    $table		= 'hasil-kerjasama';
			    $tingkat	= array("Dalam Kampus", "Antar Kampus", "Kabupaten / Kota", "Provinsi", "Nasional", "Internasional");
	    	}
	    } else if($_SESSION['page']=='kurikulum') {
	    	include $dir2 . 'kurikulum.php';
			$db 	= new kurikulum();
			$table	= 'kurikulum';
	    } else if($_SESSION['page']=='pengabdian-masyarakat') {
	    	include $dir2 . 'pengabdian-masyarakat.php';
			$db 	= new pengabdianMasyarakat();
			$table	= 'pengabdian-masyarakat';
	   	} else if($_SESSION['page']=='penelitian') {
	    	include $dir2 . 'penelitian.php';
			$db 	= new penelitian();
			$table	= 'penelitian';
	    } else if($_SESSION['page']=='hasil-kerjasama') {
	    	include $dir2 . 'hasil-kerjasama.php';
			$db 	= new hasilKerjasama();
			$table	= 'hasil-kerjasama';
	   	} else if($_SESSION['page']=='public') {
	    	if($_SESSION['subpage']=='prestasi-dosen') {
	    		include $dir2 . 'prestasi-dosen.php';
				$db 	= new prestasiDosen();
			    $table	= 'prestasi-dosen';
	    	} else if($_SESSION['subpage']=='prestasi-mahasiswa') {
	    		include $dir2 . 'prestasi-mahasiswa.php';
				$db 	= new prestasiMahasiswa();
			    $table	= 'prestasi-mahasiswa';
	    	}
	   	}
	} else {
	   	//include $dir2 . 'dashboard.php';
		//$db 	= new ();
		//$table	= '';
	}
?>