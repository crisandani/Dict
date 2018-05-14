<?php
include('session.php');


if(isset($_POST['modifica']))
{
	$name=$_POST['CampNume'];
	$short=$_POST['CampShort'];
	$description=$_POST['CampDescriere'];
	//alert($name);
	$sql='insert into words_modify(name,short,description) values ("'.$name.'","'.$short.'","'.$description.'")';
	$result=mysqli_query($db,$sql);
	if($result){
		alert("Cererea a fost inregistrata !");
echo'<script>window.location="IndexLogat.php";</script>';
	}
	else { alert("not ok");}
	
	
	
}



?>