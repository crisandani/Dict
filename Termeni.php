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

$sql='select name,short,description from words where name like "%'.$nume.'"';
$query=mysqli_query($db,$sql);
if(mysqli_num_rows($query) > 0) {
	
	while($rezultate=mysqli_fetch_array($query)){
		$name=$rezultate['name'];
		$short=$rezultate['short'];
		$description=$rezultate['description'];
		
	}
									}
									else {
									$output='<div id="eroare">'."Nu s-au gasit rezultate !".'</div>'; }
	


echo'<form action="modifica.php" method="post">';
echo'<p class="p">Nume:</p>';
echo' <input name="CampNume" class="camp" type="text" value="'.$name.'">';

echo '<p class="p">Descriere Scurta:</p>';
echo'<input name="CampShort" class="camp" type="text" value="'.$short.'"/>';
echo'<p  class="p">Descriere:</p>';
echo'<textarea class="camp" name="CampDescriere" rows="13" cols="130">'.$description.'</textarea><br>';
echo'<input type="radio" name="capitol" value="1"><span>It<span>';
echo'<input type="radio" name="capitol" value="2"><span>Automatizari<span>';
echo'<button id="BtnSubmit" type="submit" value="Submit" name="modifica">Modifica</button>';
echo'</form>';
}

else
{
	if(isset($_POST['adauga'])){
		//$ceva=$_POST['adauga'];
	//alert($ceva);

	
	
	

echo'<form action="adauga.php" method="post">';
echo'<p class="p">Nume:</p>';
echo' <input name="CampNume" class="camp" type="text" value="here...">';

echo '<p class="p">Descriere Scurta:</p>';
echo'<input name="CampShort" class="camp" type="text" value="here..."/>';
echo'<p  class="p">Descriere:</p>';
echo'<textarea class="camp" name="CampDescriere" rows="13" cols="130">Here....</textarea><br>';
echo'<input type="radio" name="capitol" value="1"><span>It<span>';
echo'<input type="radio" name="capitol" value="2"><span>Automatizari<span>';
echo'<button id="BtnSubmit" type="submit" value="Submit" name="adauga">Adauga</button>';
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
