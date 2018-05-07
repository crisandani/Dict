<?php
	session_start();
	if (isset($_SESSION['login_user']) && $_SESSION['login_user'] == true) {
    header("location:indexLogat.php");
} else {
   header("location:index.php");
}
?>