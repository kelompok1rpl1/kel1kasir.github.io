<?php
if(isset($_POST['simpan'])){
$nik=$_POST['nik'];
$nama_masyarakat=$_POST['nama_masyarakat'];
$username=$_POST['username'];
$password=$_POST['password'];
$telp=$_POST['telp'];
include "config.php";
$sqls="insert into tabel_masyarakat (nik, nama,
username, password,telp) values ('$nik', '$nama_masyarakat', '$username','$password','$telp')";
$simpan=mysqli_query($koneksi,$sqls);
if($simpan){
echo "<script>alert('Data Berhasil
Disimpan')</script>";
}else{
echo "<script>alert('Data Gagal Disimpan')</script>";
}
}
?>
<meta http-equiv="refresh" content="1;url=tampil_masyarakat.php">