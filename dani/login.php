<!DOCTYPE html>
<?php

   include("connection.php");
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = mysqli_real_escape_string($db,$_POST['Email']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']); 
      
      $sql = "SELECT id FROM users WHERE e_mail = '$myusername' and password = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	 
	  
	  

      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
        
         $_SESSION['login_user'] = $myusername;
		 
		alert($_SESSION['login_user']);
		if($_SESSION['login_user']=="admin@yahoo.com")
			header("location: admin.php");
		 else{         
		 
         header("location: indexLogat.php");
		 }
      }else {
         $error = 'Your Login Name or Password is invalid';
		 alert($error);
      }
   }

?>
<html lang="en">
 <head>
 <title>Log In</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
   <link rel="stylesheet" href="styleLogin.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
 <title>Index</title>
</head>
<body>
<div class="Login">
<i class="material-icons">person</i>
<form method="post" autocomplete="on"> 
	<p>E-mail</p>
	<input type="email" name="Email">
	<p>Parolă</p>
    <input type="password" name="password">
	<input type="submit" name="login" value="Loghează-te">
	</form>
	
	</div>
</body>
</html>