<?php
session_start();
if(isset($_POST['butonDa'])){
	
	$nume=$_POST['butonDa'];
	$sql='SELECT FROM words_add WHERE name like "%'.$nume.'"';
	$query=mysqli_query($db,$sql);
	$rezultat=mysqli_fetch_array($query);
	$short=$rezultat['short'];
	$description=$rezultat['description'];
	
	$sql='INSERT INTO words (`name`,`short`,`description`) VALUES ("'.$name.'","'.$short.'","'.$description.'")';
	mysqli_query($db,$sql);
	
}
	
	
?>