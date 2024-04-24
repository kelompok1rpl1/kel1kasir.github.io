<?php
session_start();
include 'koneksi.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>Kasir Borcelle</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="login">
		<h2>Login</h2>
		<form action="" method="POST">
		<input type="text" name="user" placeholder="Username" required>
		<input type="password" name="pass" placeholder="Password" required>
			<button class="btn-kirim" type="submit" name="submit">Masuk</button>
		</form>
		<?php
		if (isset($_POST['submit'])) {
			$user =$_POST['user'];
			$pass =$_POST['pass'];
			$data_user =mysqli_query($koneksi, "SELECT * FROM petugas WHERE username = '$user' AND password = '$pass'");
			$r = mysqli_fetch_array($data_user);
			$username =$r['username'];
			$password =$r['password'];
			$id =$r['id_petugas'];
			$level= $r['level'];
			$nama = $r['nama_petugas'];
			if($user==$username && $pass==$password){
				$_SESSION['level'] = $level;
				$_SESSION['nama_petugas'] = $nama;
				$_SESSION['id_petugas'] = $id;
			header("Location: beranda.php");
			}else {
			echo "<script>alert('Login Gagal');</script>";
      header("Location: beranda.php");
		}
		}
		?>
    </div>
</div>
</body>
</html>