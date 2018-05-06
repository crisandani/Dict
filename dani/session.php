<?php
   include('connection.php');
 session_start(); 
   
   $user_check = $_SESSION['login_user'];
   
   /*
		//$_SESSION['nume']= va fi first_name;
		$result=mysqli_query($db,"SELECT first_name from users where e_mail='$user_check'");
		$r=mysqli_fetch_array($result,MYSQLI_ASSOC);
		$_SESSION['nume']=$r;
	*/
		
   $ses_sql = mysqli_query($db,"select first_name,e_mail from users where e_mail = '$user_check' ");
   $row = mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);
   $_SESSION['nume']=$row['first_name'];
   
   $login_session = $row['e_mail'];
   //alert($login_session);
   
   if(!isset($_SESSION['login_user'])){
      header("location:login.php");
   }
?>