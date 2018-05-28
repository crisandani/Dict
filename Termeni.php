<!DOCTYPE html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
   <link rel="stylesheet" href="styleTermeni.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <title>Termeni</title>
</head>


<body>

<?php 
include('session.php');
if(isset($_POST['modifica']))
{
	//alert("modifica");
$nume=$_POST['modifica'];
//alert("nume:".$nume."");

$sql='select id,name,short,description from words where name like "%'.$nume.'"';
$query=mysqli_query($db,$sql);
if(mysqli_num_rows($query) > 0) {
	
	while($rezultate=mysqli_fetch_array($query)){
		$name=$rezultate['name'];
		$short=$rezultate['short'];
		$description=$rezultate['description'];
		$id=$rezultate['id'];
		
	}
									}
									else {
									$output='<div id="eroare">'."Nu s-au gasit rezultate !".'</div>'; }
	


echo'<form action="modifica.php" method="post" enctype="multipart/form-data">>';
echo'<p class="p">Nume:</p>';
echo' <input name="CampNume" class="camp" type="text" value="'.$name.'">';

echo '<p class="p">Descriere Scurta:</p>';
echo'<input name="CampShort" class="camp" type="text" value="'.$short.'"/>';
echo'<p  class="p">Descriere:</p>';
echo'<textarea class="camp" name="CampDescriere" rows="13" cols="130">'.$description.'</textarea><br>';
echo'<button id="BtnSubmit" type="submit" value="'.$id.'" name="modifica">Modifica</button>';
echo'<input type="file" name="myimage"/>';
echo'</form>';
}

else
{
	if(isset($_POST['adauga'])){
		

	
	
	

echo'<form action="adauga.php" method="post" enctype="multipart/form-data>';
echo'<p class="p">Nume:</p>';
echo' <input name="CampNume" class="camp" type="text" value="" placeholder="Nume"> ';

echo '<p class="p">Descriere Scurta:</p>';
echo'<input name="CampShort" class="camp" type="text" value="" placeholder="Descriere Scurta"/>';
echo'<p  class="p">Descriere:</p>';
echo'<textarea class="camp" name="CampDescriere" rows="13" cols="130" placeholder="Descriere" ></textarea><br>';
echo'<input type="checkbox" name="capitol1" value="1"><span>It<span>';
echo'<input type="checkbox" name="capitol2" value="2"><span>Automatizari<span>';
echo'<button id="BtnSubmit" type="submit" value="Submit" name="adauga">Adauga</button>';
echo'<input type="file" name="myimage"/>';
echo'</form>';

	}




}?>

<script>
function adauga(name,shorti,description){
	
	include('session.php');
	alert($name);
	 var sql='insert into words_copy(name,short,description) values ("'.name.'","'.shorti.'","'.description.'")';
	var result=mysqli_query($db,$sql);
	if(result){
		alert("ok");
	}
	else { alert("not ok");}
	
	
};
function validate()
{
	conf = confirm("Sigur stergi acest utilizator ?");
	if (conf)
		var t=0;
	else{
		alert("Nu s-a sters");
		event.preventDefault();
		
	}
	</script>
</body>
</html>
