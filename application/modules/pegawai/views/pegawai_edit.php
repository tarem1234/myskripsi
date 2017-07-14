<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>Welcome to Pegawai</title>
 
</head>
<body>
 
<form action="<?php echo base_url('pegawai/pro_edit');?>" method="POST" enctype="multipart/form-data">
<input type="hidden" name="id" value="<?php echo $listing->id; ?>">
	<label>
		Nama Pegawai :
	</label>
	<input type="text" name="nama_pegawai" value="<?php echo $listing->nama_pegawai; ?>" > <br>
	<label>
		Tempat Lahir :
	</label>
	<input type="text" name="tempat_lahir" value="<?php echo $listing->tempat_lahir; ?>" > <br>
	<label>
		Tanggal Lahir :
	</label>
	<input type="text" name="tanggal_lahir" value="<?php echo $listing->tanggal_lahir; ?>" > <br>
	<label>
		Telepon :
	</label>
	<input type="text" name="telpon" value="<?php echo $listing->telpon; ?>"> <br>
	<label>
		Email :
	</label>
	<input type="text" name="email" value="<?php echo $listing->email; ?>" > <br>
	<label>
		Alamat :
	</label>
	<input type="text" name="alamat" value="<?php echo $listing->alamat; ?>"> <br>
	 

	<button type="submit"> Save </button>
</form>

 

</body>
</html>