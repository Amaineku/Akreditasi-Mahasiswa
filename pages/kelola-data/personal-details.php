<?php include '../static/top.php'; ?>
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Personal Details</h3>
              <div class="pull-right box-tools">
                <button class="btn btn-primary btn-md" data-toggle="modal" data-target="#modalAdd"><i class="fa fa-plus"> </i> Add Personal Details</button>
	          </div>
            </div><!-- /.box-header -->
            <div class="box-body">
              <table class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>NIM</th>
                    <th>Nama</th>
                    <th>Jurusan</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                	<tr>
                    	  <td>1710130000</td>
                        <td><a href="print-cv-mahasiswa.php"> Iwan</td>
					             	<td>Ilmu Komputer</td>
                        <td>(171) 555-2222</td>
                        <td>89 Chiaroscuro Rd, Portland, USA</td>                        
                        <td>
                          <a href="#editPersonalDetail" class="btn  btn-warning btn-md" data-toggle="modal" data-target="#modalEdit"><i class="fa fa-edit" data-toggle="tooltip" title="Edit"></i> Edit</a>

                          <a href="#deletePersonalDetail" class="btn  btn-danger btn-md" data-toggle="modal" data-target="#modalDelete"><i class="fa fa-trash" data-toggle="tooltip" title="Delete"></i> Delete</a>

                          <a href="print-cv-mahasiswa.php"><button class="btn btn-primary btn-md"><i class="fa fa-print"> </i> Print</button></a>
                      </td>
                	</tr>
                	<tr>
                        <td>1710130000</td>
                    	  <td>Budi</td>
                        <td>Ilmu Komputer</td>
                        <td>(171) 555-2222</td>
						            <td>89 Chiaroscuro Rd, Portland, USA</td>                        
                        <td>
                          <a href="#editPersonalDetail" class="btn  btn-warning btn-md" data-toggle="modal" data-target="#modalEdit"><i class="fa fa-edit" data-toggle="tooltip" title="Edit"></i> Edit</a>

                          <a href="#deletePersonalDetail" class="btn  btn-danger btn-md" data-toggle="modal" data-target="#modalDelete"><i class="fa fa-trash" data-toggle="tooltip" title="Delete"></i> Delete</a>

                          <a href="print-cv-mahasiswa.php"><button class="btn btn-primary btn-md"><i class="fa fa-print"> </i> Print</button></a>
                      </td>
                	</tr>
                	<tr>
                        <td>1710130000</td>
                    	  <td>Harpy</td>
                        <td>Ilmu Komputer</td>
                        <td>(171) 555-2222</td>
						            <td>89 Chiaroscuro Rd, Portland, USA</td>                        
                        <td>
                          <a href="#editPersonalDetail" class="btn  btn-warning btn-md" data-toggle="modal" data-target="#modalEdit"><i class="fa fa-edit" data-toggle="tooltip" title="Edit"></i> Edit</a>

                          <a href="#deletePersonalDetail" class="btn  btn-danger btn-md" data-toggle="modal" data-target="#modalDelete"><i class="fa fa-trash" data-toggle="tooltip" title="Delete"></i> Delete</a>

                          <a href="print-cv-mahasiswa.php"><button class="btn btn-primary btn-md"><i class="fa fa-print"> </i> Print</button></a>
                      </td>
                	</tr>
                </tbody>
              </table>
            </div><!-- /.box-body -->
          </div><!-- /.box -->
        </div><!-- /.col -->

     <div id="modalAdd" class="modal fade" role="dialog">
      <div class="modal-dialog">
          <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            <h4 class="modal-title">Add Person</h4>
          </div>
          <div class="modal-body row">
            <div class="col-sm-6">
              <div class="form-group">
                <label>NIM</label>
                <input type="text" class="form-control" name="nim" placeholder="Masukan NIM">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Name</label>
                <input type="text" class="form-control" name="name" placeholder="Masukan Name">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Tempat Lahir</label>
                <input type="text" class="form-control" name="nama_jurnal" placeholder="Masukan Tempat Lahir">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Tanggal Lahir</label>
                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker">
                </div>
              </div>
            </div>
            <div class="col-sm-6">
               <div class="form-group">
                <label>No</label>
                <input type="text" class="form-control" name="No" placeholder="Masukan No">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Email</label>
                <input type="text" class="form-control" name="Email" placeholder="Masukan Email">
              </div>
            </div>
            <div class="col-sm-12">
              <div class="form-group">
                <label>Alamat</label>
                <input type="text" class="form-control" name="alamat" placeholder="Masukan Alamat">
              </div>
              <br>
              <div class="form-group mt-5">
                  <label for="inputEmail3" class="col-sm-2 control-label">Status</label>

                  <div class="col-sm-10">
                  <input type="text" class="form-control" name="Status" placeholder="Masukan Status">
                  </div>
              </div>
              <br>
              <br>
               <div class="form-group mt-5">
                  <label for="inputEmail3" class="col-sm-2 control-label">Prodi</label>

                  <div class="col-sm-10">
                  <input type="text" class="form-control" name="Prodi" placeholder="Masukan Prodi">
                  </div>
              </div>
              <br>
              <br>
               <div class="form-group mt-5">
                  <label for="inputEmail3" class="col-sm-2 control-label">Angkatan</label>

                  <div class="col-sm-10">
                  <input type="text" class="form-control" name="Angkatan" placeholder="Masukan Angkatan">
                  </div>
              </div>
            </div>
            <div class="col-sm-12">
              <br>
              <div class="form-group mt-5">
                <label>Media Sosial</label>
                <input type="text" class="form-control" name="Media Sosial" placeholder="Masukan Media Sosial">
              </div>
            </div>
            <div class="col-sm-12">
              <div class="checkbox">
                <label>
                  <input type="checkbox"> Check me out
                </label>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Tutup</button>
            <button type="button" class="btn btn-primary">Simpan</button>
          </div>
        </div>
      </div>
    </div>

    <div id="modalEdit" class="modal fade" role="dialog">
  		<div class="modal-dialog">
	        <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		        <h4 class="modal-title">Edit Personal Details</h4>
		      </div>
		      <div class="modal-body row">
            <div class="col-sm-6">
              <div class="form-group">
                <label>NIM</label>
                <input type="text" class="form-control" name="nim" placeholder="Masukan NIM">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Name</label>
                <input type="text" class="form-control" name="name" placeholder="Masukan Name">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Tempat Lahir</label>
                <input type="text" class="form-control" name="nama_jurnal" placeholder="Masukan Tempat Lahir">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Tanggal Lahir</label>
                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right" id="datepicker">
                </div>
              </div>
            </div>
            <div class="col-sm-6">
               <div class="form-group">
                <label>No</label>
                <input type="text" class="form-control" name="No" placeholder="Masukan No">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <label>Email</label>
                <input type="text" class="form-control" name="Email" placeholder="Masukan Email">
              </div>
            </div>
            <div class="col-sm-12">
              <div class="form-group">
                <label>Alamat</label>
                <input type="text" class="form-control" name="alamat" placeholder="Masukan Alamat">
              </div>
              <br>
              <div class="form-group mt-5">
                  <label for="inputEmail3" class="col-sm-2 control-label">Status</label>

                  <div class="col-sm-10">
                  <input type="text" class="form-control" name="Status" placeholder="Masukan Status">
                  </div>
              </div>
              <br>
              <br>
               <div class="form-group mt-5">
                  <label for="inputEmail3" class="col-sm-2 control-label">Prodi</label>

                  <div class="col-sm-10">
                  <input type="text" class="form-control" name="Prodi" placeholder="Masukan Prodi">
                  </div>
              </div>
              <br>
              <br>
               <div class="form-group mt-5">
                  <label for="inputEmail3" class="col-sm-2 control-label">Angkatan</label>

                  <div class="col-sm-10">
                  <input type="text" class="form-control" name="Angkatan" placeholder="Masukan Angkatan">
                  </div>
              </div>
            </div>
            <div class="col-sm-12">
              <br>
              <div class="form-group mt-5">
                <label>Media Sosial</label>
                <input type="text" class="form-control" name="Media Sosial" placeholder="Masukan Media Sosial">
              </div>
            </div>
            <div class="col-sm-12">
              <div class="checkbox">
                <label>
                  <input type="checkbox"> Check me out
                </label>
              </div>
            </div>
          </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Tutup</button>
            <a href="form-personal-details.php"><button class="btn btn-primary btn-md"><i class="fa fa-search"> </i> Show Full Form</button></a>
		      </div>
		    </div>
      </div>
    </div>

		<div id="modalDelete" class="modal modal-danger fade" role="dialog">
	  		<div class="modal-dialog">
		        <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
			        <h4 class="modal-title">Delete Personal Details</h4>
			      </div>
			      <div class="modal-body">
			        <p>Apakah kamu ingin menghapus data ini?</p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Tutup</button>
			        <button type="button" class="btn btn-outline">YA</button>
			      </div>
			    </div>
		    </div>
	    </div>

      </div><!-- /.row -->
    </section>
<?php include '../static/bot.php'; ?>
