<?php
include('session.php');


if(isset($_POST['adauga']))
{
	$name=$_POST['CampNume'];
	$short=$_POST['CampShort'];
	$description=$_POST['CampDescriere'];
	//alert($name);
	$sql='insert into words_add(name,short,description) values ("'.$name.'","'.$short.'","'.$description.'")';
	$result=mysqli_query($db,$sql);
	if($result){
		alert("Cererea a fost inregistrata !");
		//header("Location: IndexLogat.php", true, 301);
//exit();
echo'<script>window.location="IndexLogat.php";</script>';
	}
	else { alert("not ok");}
	
	
	
}



?>