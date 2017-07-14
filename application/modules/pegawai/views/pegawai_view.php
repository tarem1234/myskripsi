<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>Welcome to Pegawai</title>
 
</head>
<body>
<a href="<?php echo base_url('pegawai/add'); ?>"> Add Data </a>
 <table cellpadding="3" cellspacing="0" border="1" >
 <tr> 
 <td> No </td>
 <td> Nama Pegawai </td>
 <td> Tempat Lahir </td>
 <td> Tanggal Lahir </td>
 <td> Telepon </td>
 <td> Email </td>
 <td> Alamat </td>
 <td> Opsi </td>
 </tr>

<?php
$no = 1;
foreach ($listing->result() as $row) {
?>
 
 <tr> 
 <td> <?php echo $no; ?> </td>
 <td> <?php echo $row->nama_pegawai; ?> </td>
 <td> <?php echo $row->tempat_lahir; ?> </td>
 <td> <?php echo $row->tanggal_lahir; ?> </td>
 <td> <?php echo $row->telpon; ?> </td>
 <td> <?php echo $row->email; ?> </td>
 <td> <?php echo $row->alamat; ?> </td>
 <td> 	<a href="<?php echo base_url('pegawai/edit/'.$row->id); ?>"> Edit </a> &nbsp; | &nbsp;
 		<a href="<?php echo base_url('pegawai/delete/'.$row->id); ?>"> Delete </a> 
  </td>
 </tr>
 <?php
 $no++;
 }
 ?>
 </table>
 

 

</body>
</html>