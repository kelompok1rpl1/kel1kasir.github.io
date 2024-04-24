<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>kasir borcelle</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h1>KASIR BORCELLE</h1>
	<div class="menu">
		
		
		
		<?php
		$level = $_SESSION['level'] == 'petugas';
		?>
		<?php
		if($level) {
		?>
		<a href="pelanggan/tampil_pelanggan.php" target="frame">DATA PELANGGAN</a>
		<a href="produk/tampil_produk.php" target="frame">DATA PRODUK</a>
		<a href="transaksi/tampil_transaksi.php" target="frame">TRANSAKSI</a>
		<?php } else{ ?>
		<a href="petugas/tampil_petugas.php" target="frame">REGISTRASI PETUGAS</a>
		<a href="pelanggan/tampil_pelanggan.php" target="frame">DATA PELANGGAN</a>
		<a href="produk/tampil_produk.php" target="frame">DATA PRODUK</a>
		<a href="transaksi/tampil_transaksi.php" target="frame">TRANSAKSI</a>
		<a href="laporan/index.php?id=<?= $nama ?>" target="frame">LAPORAN</a>
		<a href="about.php" target="frame">ABOUT</a>
		<a href="login.php">LOGOUT</a>
		<?php } ?>
		
	</div>
	
	
</div>

	<iframe name="frame" frameborder="0" width="100%" height="402px"></iframe>
	<footer>
		<span>Copyright</span> UKK RPL SMKN 1KADIPATEN <span class="t">2024</span>.
	</footer>
</body>
</html>