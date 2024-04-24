<!DOCTYPE html>
<html>
<head>
<title>Input Data Masyarakat</title>
<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
<form method="POST" action="simpan_masyarakat.php">
<h2>Input Data Masyarakat</h2>
<hr>
<table width="100%">
<tr>
<td>Nik</td>
<td><input type="text" name="nik"></td>
</tr>
<tr>
<td>Nama Masyarakat</td>
<td><input type="text" name="nama_masyarakat"></td>
</tr>
<tr>
<td>Username</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td>telp</td>
<td><input type="text" name="telp"></td>
</tr>
</table>
<hr>
<p align="right">
<input type="submit" name="simpan" value="Simpan"
class="simpan">
<a href="tampil_masyarakat.php" class="batal">Batal</a>
</p>
</form>
</body>
</html>