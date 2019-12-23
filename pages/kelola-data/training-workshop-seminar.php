<?php include '../static/top.php'; ?>
  <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">List Training, Seminar, Workshop</h3>
              <div class="pull-right box-tools">
                <button class="btn btn-primary btn-md" data-toggle="modal" data-target="#modalAdd"><i class="fa fa-plus"> </i> Add Training, Seminar, Workshop</button>
            </div>
            </div><!-- /.box-header -->
            <div class="box-body">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>Nama Kegiatan</th>
                    <th>Posisi</th>
                    <th>Tahun</th>
                    <th>Lokasi</th>
                    <th>Kategori</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                        <td>Amazing You</td>
                        <td>Panitia</td>
                        <td>2018</td>
                        <td>ICE BSD City</td>
                        <td>Training</td>
                        <td>
                            <a href="#editPersonalDetail" class="btn  btn-warning btn-md" data-toggle="modal" data-target="#modalEdit"><i class="fa fa-edit" data-toggle="tooltip" title="Edit"></i> Edit</a>

                            <a href="#deletePersonalDetail" class="btn  btn-danger btn-md" data-toggle="modal" data-target="#modalDelete"><i class="fa fa-trash" data-toggle="tooltip" title="Delete"></i> Delete</a>
                        </td>
                  </tr>
                  <tr>
                        <td>Github Workshop</td>
                        <td>Peserta</td>
                        <td>2019</td>
                        <td>EBS Lt. 18</td>
                        <td>Workshop</td>
                        <td>
                            <a href="#editPersonalDetail" class="btn  btn-warning btn-md" data-toggle="modal" data-target="#modalEdit"><i class="fa fa-edit" data-toggle="tooltip" title="Edit"></i> Edit</a>

                            <a href="#deletePersonalDetail" class="btn  btn-danger btn-md" data-toggle="modal" data-target="#modalDelete"><i class="fa fa-trash" data-toggle="tooltip" title="Delete"></i> Delete</a>
                        </td>
                  </tr>
                  <tr>
                        <td>Techtalk</td>
                        <td>Panitia</td>
                        <td>2019</td>
                        <td>R. Auditorium</td>
                        <td>Seminar</td>
                        <td>
                            <a href="#editPersonalDetail" class="btn  btn-warning btn-md" data-toggle="modal" data-target="#modalEdit"><i class="fa fa-edit" data-toggle="tooltip" title="Edit"></i> Edit</a>

                            <a href="#deletePersonalDetail" class="btn  btn-danger btn-md" data-toggle="modal" data-target="#modalDelete"><i class="fa fa-trash" data-toggle="tooltip" title="Delete"></i> Delete</a>
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
            <h4 class="modal-title">Add Training, Seminar, Workshop</h4>
          </div>
          <div class="modal-body row">
            <div class="col-sm-12">
            <div class="form-group">
                <label>Nama Kegiatan</label>
                <input type="text" class="form-control" name="name" placeholder="Masukan Nama Kegiatan">
              </div>
            </div>
              
            <div class="col-sm-12">
              <div class="form-group">
                <label>Posisi</label>
                <input type="text" class="form-control" name="Posisi" placeholder="Peran dalam kegiatan">
              </div>
            </div>
            
            <div class="col-sm-12">
              <div class="form-group">
                <label>Tahun</label>
                <input type="text" class="form-control" name="tahun" placeholder="Masukan Tahun">
              </div>
            </div>
            
            <div class="col-sm-12">  
              <div class="form-group">
                <label>Lokasi</label>
                <input type="text" class="form-control" name="Lokasi" placeholder="Masukan Lokasi">
              </div>
            </div>
            
            <div class="col-sm-12">  
              <div class="form-group">
                <label>Kategori</label>
                <input type="text" class="form-control" name="Kategori" placeholder="Masukan Kategori">
              </div>
            </div>
            
            <div class="col-sm-12">  
              <div class="form-group">
                  <label for="exampleInputFile">Upload File</label>
                  <input type="file" id="exampleInputFile">
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
            <h4 class="modal-title">Edit Training/Seminar/Workshop</h4>
          </div>
          <div class="modal-body">
             <div class="form-group">
                <label>Nama Kegiatan</label>
                <input type="text" class="form-control" name="name" placeholder="Masukan Nama Kegiatan">
              </div>

              <div class="form-group">
                <label>Posisi</label>
                <input type="text" class="form-control" name="tahun" placeholder="Masukan Peran dalam acara">
              </div>
              <br>
              <div class="form-group">
                  <label for="exampleInputFile">Upload File</label>
                  <input type="file" id="exampleInputFile">
              </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Tutup</button>
            <button type="button" class="btn btn-primary">Simpan</button>
          </div>
        </div>
      </div>
    </div>

    <div id="modalDelete" class="modal modal-danger fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <h4 class="modal-title">Delete Kegiatan</h4>
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
