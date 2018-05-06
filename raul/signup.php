<!DOCTYPE html>


<?php

session_start();
if(isset($_POST['signup'])){
    include 'connection.php'; 
    $nume=$_POST['Nume'];
    $prenume=$_POST['Prenume'];
    $user=$_POST['Email'];
    $pass=$_POST['parola'];
    $date=$_POST['ziNastere'];
    if($nume==''||$prenume==''||$user==''||$pass==''||$date==''){
        alert("completati toate campurile");
        //echo '<script>window.location.href = "signup.php";</script>';
    }
	else{
	//verificare duplicate
	$result1=$db->query("Select e_mail from users where e_mail='$user'");
	if(mysqli_num_rows($result1))
    {
       $row1=mysqli_fetch_row($result1);
     if($row1[0]==$user){
		 
	 alert("Adresa de email exista deja ");
	 }
	 
    }else{
	 
	 //introducere in baza de date		
    $result=$db->query("insert into users(first_name,last_name,e_mail,password,birthday) "
            . "values('$nume','$prenume','$user','$pass','$date')");
    if(!$result)
		alert("query error");
	else{
		alert("Contul a fost inregistrat !");
	echo '<script>window.location.href = "index.php";</script>';
	
	}
	 
	 }
	
			
	
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