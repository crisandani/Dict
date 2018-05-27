<?php
include('session.php');


if(isset($_POST['modifica']))
{
	$id=$_POST['modifica'];
	$name=$_POST['CampNume'];
	$short=$_POST['CampShort'];
	$description=$_POST['CampDescriere'];
	
	//alert($capitol);
	$sql='insert into words_modify(name,short,description,words_id) values ("'.$name.'","'.$short.'","'.$description.'","'.$id.'")';
	$result=mysqli_query($db,$sql);
	if($result){
		alert("Cererea a fost inregistrata !");
echo'<script>window.location="IndexLogat.php";</script>';
	}
	else { alert("Cererea nu a fost inregistrata !");
echo'<script>window.location="IndexLogat.php";</script>';
	}
	
	
	
}



?>