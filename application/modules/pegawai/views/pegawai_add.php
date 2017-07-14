<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>Welcome to Pegawai</title>
 
</head>
<body>
 
<form action="<?php echo base_url('pegawai/pro_add');?>" method="POST" enctype="multipart/form-data">
	<label>
		Nama Pegawai :
	</label>
	<input type="text" name="nama_pegawai"> <br>
	<label>
		Tempat Lahir :
	</label>
	<input type="text" name="tempat_lahir"> <br>
	<label>
		Tanggal Lahir :
	</label>
	<input type="text" name="tanggal_lahir"> <br>
	<label>
		Telepon :
	</label>
	<input type="text" name="telpon"> <br>
	<label>
		Email :
	</label>
	<input type="text" name="email"> <br>
	<label>
		Alamat :
	</label>
	<input type="text" name="alamat"> <br>
	 

	<button type="submit"> Save </button>
</form>

 

</body>
</html>