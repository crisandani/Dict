<?php

session_start();
if(isset($_POST['signup'])){
    require 'connect.php';
    $nume=$_POST['Nume'];
    $prenume=$_POST['Prenume'];
    $user=$_POST['Email'];
    $pass=$_POST['password'];
    $date=$_POST['ziNastere'];
    if($nume==''||$prenume==''||$user==''||$pass==''||$date==''){
        alert("completati toate campurile");
        echo '<script>window.location.href = "signup.php";</script>';
    }
	//verificare duplicate
	$result1=$conn->query("Select e_mail from users where e_mail='$user'");
	if(mysqli_num_rows($result1))
    {
       $row1=mysqli_fetch_row($result1);
     if($row1[0]==$user){
		 
	 alert("Adresa de email exista deja ");
	 
     //echo '<script>window.location.href = "signup.php";</script>';
	 }
	 
    }else{
	 
	 //introducere in baza de date		
    $result=$conn->query("insert into users(first_name,last_name,e_mail,password,birthday) "
            . "values('$nume','$prenume','$user','$pass','$date')");
    if(!$result)
		alert("query error");
	else{
		alert("Contul a fost inregistrat !");
	echo '<script>window.location.href = "index.html";</script>';
	
	}
	 
	 }
	
			
	
}
?>
<html>
 <head>
 <title>SignUp</title>
  <meta charset="UTF-8">
   <link rel="stylesheet" href="css/styleSignup.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
 <title>Index</title>
</head>


<!--Afiseaza Welcome usermane 
<p style="color:white"><?php  echo "Welcome ".$_SESSION['username']; ?></p>-->


<body>
<div class="SignUp">
<i class="material-icons">person</i>
<form method='post'> 
	<p>Nume</p>
	<input type="text" name="Nume">
	<p>Prenume</p>
	<input type="text" name="Prenume">
	<p>E-mail</p>
	<input type="email" name="Email">
	<p>Parolă</p>
    <input type="password" name="password">
	<p>Zi de naștere</p>
	<input type="date" name="ziNastere"><br>
	<input type="submit" name="signup" value="Înscrie-te">
	</form>
	
	</div>
</body>
</html>