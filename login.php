<?php
if(isset($_SESSION['username']))
session_destroy();

//alert($_POST['login']);
if(isset($_POST['login'])&&($_POST['login']=='Loghează-te')){
     session_start();
	require 'connect.php';
    $user=$_POST['Email'];
    $pass=$_POST['password'];
    $result=$conn->query('select e_mail,password,first_name from users where e_mail="'.$user.'" and password="'.$pass.'"');
    if(mysqli_num_rows($result))
    {
       $row=mysqli_fetch_row($result);
     $_SESSION['username']=$row[2];
	 alert("Welcome ".$_SESSION['username']);
     echo '<script>window.location.href = "welcome.php";</script>';
    }
    else {
        alert('Invalid account');
        unset($_SESSION['username']);
	session_destroy();
    }
}else
	if(!isset($_POST['login'])){
		//$msg='o111k';
//echo "<script type='text/javascript'>alert('$msg');</script>";
	}else
if($_GET['action']=='logout'){
$msg='ok';
echo "<script type='text/javascript'>alert('$msg');</script>";
	session_start();
	session_unset();
	session_destroy();
	//echo '<script>window.location.href = "login.php";</script>';
	
}


?>
<html>
 <head>
 <title>Log In</title>
  <meta charset="UTF-8">
   <link rel="stylesheet" href="css/styleLogin.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
 
</head>
<body>


<!--Afiseaza Welcome usermane 
<p style="color:white"><?php echo 'Welcome '.$_SESSION['username'];?></p>-->


<div class="Login">
<i class="material-icons">person</i>
<form action="login.php" method="post"> 
	<p>E-mail</p>
	<input type="email" name="Email">
	<p>Parolă</p>
    <input type="password" name="password">
	<input type="submit" name="login" value="Loghează-te">
	</form>
	
	</div>
</body>
</html>
