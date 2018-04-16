<!DOCTYPE html>
<?php


session_start();
include 'connection.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST"){
	$nume = $mysqli->real_escape_string($_POST['Nume']);
	$prenume = $mysqli->real_escape_string($_POST['Prenume']);
	$email = $mysqli->real_escape_string($_POST['Email']);
	$parola =$mysqli->real_escape_string($_POST['parola']);
	$data = ($_POST['ziNastere']);
	//$parola=md5($parola); // encriptie
	$sql="INSERT INTO users(first_name,last_name,e_mail,password,birthday)"."VALUES('$nume','$prenume','$email','$parola','$data')";
	
	
	$msg="Eroare";
$msgOK="Inregistrare Reusita !";

	if($mysqli->query($sql)===true){
		echo "<script type='text/javascript'>alert('$msgOK');</script>";
		header("location:index.php");
	}
	else {
	echo "<script type='text/javascript'>alert('$msg');</script>";
	}
}
?>

<html lang="en">
 <head>
 <title>SignUp</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
   <link rel="stylesheet" href="styleSignup.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
 <title>Index</title>
</head>

<body>
<div class="SignUp">
<i class="material-icons">person</i>
<form action="signup.php" method="post" enctype="multipart/form-data" autocomplete="on"> 
	<p>Nume</p>
	<input type="text" name="Nume">
	<p>Prenume</p>
	<input type="text" name="Prenume">
	<p>E-mail</p>
	<input type="email" name="Email">
	<p>Parola</p>
    <input type="password" name="parola">
	<p>Zi de naștere</p>
	<input type="date" name="ziNastere"><br>
	<input type="submit" name="signup" value="Înscrie-te">
	</form>
	
	</div>
</body>
</html>