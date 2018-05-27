<?php
include('session.php');
alert("s-a apasat");
if(isset($_POST['butonDa'])){
	
	// BUTON DA -- ADAUGARE
	$id=$_POST['butonDa'];
	
	$sql='insert into words (name,short,description) SELECT name,short,description from words_add where words_add.id="'.$id.'"';	
$result=mysqli_query($db,$sql);
	if($result){
		alert("Cuvant adaugat cu succes !");
		
		$sql='delete from words_add where words_add.id="'.$id.'"';
			$result=mysqli_query($db,$sql);
	if($result){
		alert("Sters din tabelul provizoriu !");
	}
	}
}
//BUTON NU -- ADAUGARE
	if(isset($_POST['butonNu'])){
	$nume=$_POST['butonNu'];		
		
		$sql='delete from words_add where words_add.id="'.$id.'"';
			$result=mysqli_query($db,$sql);
	if($result){
		alert("Sters din tabelul provizoriu !");
	}
	}
//BUTON DA ---- MODIFICARE
if(isset($_POST['butonDaM'])){
	$id=$_POST['butonDaM'];
	$sql='update words, words_modify set words.name=words_modify.name,words.short=words_modify.short,words.description=words_modify.description where words.id=words_modify.words_id and words_modify.words_id=(select words_id from words_modify where id="'.$id.'")';
				$result=mysqli_query($db,$sql);
	if($result){
		alert("Cuvant modificat cu succes !");
		$sql='delete from words_modify where words_modify.id="'.$id.'"';
			$result=mysqli_query($db,$sql);
	if($result){
		alert("Sters din tabelul provizoriu !");
	}
	}
}
//BUON NU -- MODIFICARE
	if(isset($_POST['butonNuM'])){
	$id=$_POST['butonNuM'];		
		
	$sql='delete from words_modify where words_modify.id="'.$id.'"';
			$result=mysqli_query($db,$sql);
	if($result){
		alert("Sters din tabelul provizoriu !");
		// header("Location: admin.php");
	}
	}
?>