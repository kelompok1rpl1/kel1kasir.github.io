<html>
<head>
<meta name="vieport" content="width=device-width,
initial-scale=1.0">
<title>Daftar masyarakat</title>
<link rel="stylesheet" type="text/css" href="style4.css">
</head>
<body>
<h2>Daftar Masyarakat</h2>
<table width="800px" border="1" cellpadding="10px"
cellspacing="1px">
<thead>
<tr>
<th width="30px">No.</th>
<th width="100px">Nik</th>
<th width="70px">Nama masyarakat</th>
<th>username</th>
<th width="100px">password</th>
<th width="70px">telp</th>
<th width="120px">Aksi</th>
</tr>
</thead>
<tbody>
<?php
include "koneksi.php";
$sql="select * from tabel_masyarakat";
$result=mysqli_query($koneksi,$sql);
$no=1;
while($data=mysqli_fetch_array($result))
{
if($no%2==0){
echo "<tr class='genap'>";
}else{
echo "<tr class='ganjil'>";
}
?>
<td><?= $no ?>.</td>
<td align="center"><?= $data['nik']
?></td>
<td><?= $data['nama'] ?></td>
<td><?= $data['username'] ?></td>
<td><?= $data['password'] ?></td>
<td><?= $data['telp'] ?></td>
<td align="center" width="80px">
<a href="edit_masyarakat.php?id=<?= $data['nik']
?>" class="edit">Edit</a>
<a href="delete_masyarakat.php?id=<?=$data['nik'] ?>" 
	onclick="return confirm('Apakah Anda Yakin data masyarakat <?= $data['nama'] ?> akan dihapus?')" class="hapus">Del</a>
</td>
</tr>
<?php
$no++;
}
?>
</tbody>
<tfoot>
<tr>
<td colspan="7">
<!-- Untuk nomor Halaman -->
</td>
</tr>
</tfoot>
</table>
<br>
<a href="form_masyarakat.php" class="simpan">[+] Data Produk</a>
</body>
</html>