<?php
if(isset($_POST['ubah'])){
$nik=$_POST['nik'];
$nama_masyarakat=$_POST['nama_masyarakat'];
$username=$_POST['username'];
$password=$_POST['password'];
$telp=$_POST['telp'];
include "config.php";
$sqle="update tabel_masyarakat set nik='$nik',
nama='$nama_masyarakat', username='$username', password='$password' , telp='$telp'  where
nik='$nik'";
$simpan=mysqli_query($koneksi,$sqle);
if($simpan){
echo "<script>alert('Data Berhasil Di
Edit')</script>";
}else{
echo "<script>alert('Data Gagal Di Edit')</script>";
}
}
?>
<meta http-equiv="refresh" content="1;url=tampil_masyarakat.php">