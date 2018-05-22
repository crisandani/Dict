<?php
include('session.php');
alert("s-a apasat");
if(isset($_POST['butonDa'])){
	
	
	$nume=$_POST['butonDa'];
	alert($nume);
	//$sql1='select * from words_add where words.add.name=words_add.name='.$name.'';	
	$sql='insert into words (name,short,description) SELECT name,short,description from words_add where words_add.name="'.$nume.'"';	
$result=mysqli_query($db,$sql);
	if($result){
		alert($sql);
	}
}
	
	
?>