<?php
include('session.php');
//alert("s-a apasat");
if(isset($_POST['butonDa'])){
	
	// BUTON DA -- ADAUGARE
	$id=$_POST['butonDa'];
	
	
	
	$sql='insert into words (name,short,description) SELECT name,short,description from words_add where words_add.id="'.$id.'"';
	
$result=mysqli_query($db,$sql);
	if($result){
		alert("Cuvant adaugat cu succes !");
		
		$ultimul_id = mysqli_insert_id($db);
		alert($ultimul_id);
		
		$capitol=mysqli_query($db,'select capitol_id from words_add where words_add.id="'.$id.'"');
		$capitol=mysqli_fetch_row($capitol);
		$capitol=$capitol[0];
		
		switch ($capitol){
			case 10: mysqli_query($db,'insert into capitol_words (capitol_id,word_id) values ("1","'.$ultimul_id.'")');
					   mysqli_query($db,'insert into capitol_words (capitol_id,word_id) values ("2","'.$ultimul_id.'")');
					   alert("Introdus in ambele capitole !");
					   break;
			 case 1:  mysqli_query($db,'insert into capitol_words (capitol_id,word_id) values ("1","'.$ultimul_id.'")');	
					   alert("Introdus capitol - IT !");
					   break;
					   
			case 2:  mysqli_query($db,'insert into capitol_words (capitol_id,word_id) values ("2","'.$ultimul_id.'")');	
					   alert("Introdus capitol - Automatizari !");			
					   break;
		  
			default: alert("Eroare introducere capitol !");
		}
		
		$sql='delete from words_add where words_add.id="'.$id.'"';
			$result=mysqli_query($db,$sql);
	if($result){
		alert("Sters din tabelul provizoriu !");
		echo'<script>window.location="admin.php";</script>';
	}
	}
}


//BUTON NU -- ADAUGARE
	if(isset($_POST['butonNu'])){
	$nume=$_POST['butonNu'];		
		alert($nume);
		$sql='delete from words_add where words_add.id="'.$nume.'"';
			$result=mysqli_query($db,$sql);
	if($result){
		alert("Sters din tabelul provizoriu !");
		echo'<script>window.location="admin.php";</script>';
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
		echo'<script>window.location="admin.php";</script>';
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
		echo'<script>window.location="admin.php";</script>';
	}
	}
?>