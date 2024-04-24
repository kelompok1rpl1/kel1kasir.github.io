<!DOCTYPE html>
<html>
<head>
<title>Edit Data Masyrakata</title>
<link rel="stylesheet" type="text/css" href="style3.css">
</head>
<body>
<?php
$id=$_GET['id'];
include "config.php";
$sql="select * from tabel_masyarakat where nik='$id'";
$result=mysqli_query($koneksi,$sql);
$data=mysqli_fetch_array($result);
?>
<form method="POST" action="update_masyarakat.php">
<h2>Edit Data Petugas</h2>
<hr>
<table width="100%">
<tr>
<td>id petugas</td>
<td><input type="hidden" name="id" value="<?=
$data['nik'] ?>"><input type="text" name="nik" value="<?=
$data['nik'] ?>"></td>
</tr>
<tr>
<td>Nama Masyarakat</td>
<td><input type="text" name="nama_masyarakat" value="<?=
$data['nama'] ?>"></td>
</tr>
<tr>
<td>Username</td>
<td><input type="text" name="username" value="<?=
$data['username'] ?>"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" value="<?=
$data['password'] ?>"></td>
</tr>
<tr>
<td>telp</td>
<td><input type="text" name="telp" value="<?=
$data['telp'] ?>"></td>
</tr>
</table>
<hr>
<p align="right">
<input type="submit" name="ubah" value="ubah"
class="simpan">
<a href="tampil_masyarakat.php" class="batal">Batal</a>
</p>
</form>
</body>
</html>