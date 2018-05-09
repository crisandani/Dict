
<?php
include'session.php';



if(isset($_POST['confirm']))
	alert("ce ");
if(isset($_POST['sterge']))
{

    $user=$_POST['sterge'];



   $result=$db->query("delete from users where e_mail='$user'");
   if($result){
	   alert("Utilizatorul ".$user." s-a sters ! ");
   }
}
header("Location: admin.php");




?>
