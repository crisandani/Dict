<?php
include('session.php');


if(isset($_POST['adauga']))
{
	$name=$_POST['CampNume'];
	$short=$_POST['CampShort'];
	$description=$_POST['CampDescriere'];
	
	//verifica daca ambele capitole au fost selectate
	if((isset($_POST['capitol1']))&&((isset($_POST['capitol2'])))){
		$capitol1=$_POST['capitol1'];
		$capitol2=$_POST['capitol2'];
		//alert(''.$capitol1.','.$capitol2.'');	
		$sql='insert into words_add(name,short,description,capitol_id) values ("'.$name.'","'.$short.'","'.$description.'","10")';
		}else { if(isset($_POST['capitol1'])){
					$capitol1=$_POST['capitol1'];
					$sql='insert into words_add(name,short,description,capitol_id) values ("'.$name.'","'.$short.'","'.$description.'","'.$capitol1.'")';
					}else{ if(isset($_POST['capitol2'])){
							$capitol2=$_POST['capitol2'];
							$sql='insert into words_add(name,short,description,capitol_id) values ("'.$name.'","'.$short.'","'.$description.'","'.$capitol2.'")';
							/*
							
							if(getimagesize($_FILES['myimage']['tmp_name']) == FALSE)
								{
							echo "Please select an image";
										}
								else{
		
									$imagetmp=addslashes (file_get_contents($_FILES['myimage']['tmp_name']));

									saveimage($imagetmp);
		
									}
									function saveimage($imagetmp){
										$db= mysqli_connect('localhost','root','','dictionar');


								$sql="update words set other='$imagetmp' where name like '%cache%'";
								$result=mysqli_query($db,$sql);
								if($result)
									{
										echo "<br/>Image Uploaded";
		
												}
											else
														echo "<br/>Image not Uploaded";

											}	
							*/
							
							}else {
									alert("Nu a fost selectat nici un capitol !");
									echo'<script>window.location="IndexLogat.php";</script>';
									}
	
							}
							
				}
	
	
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