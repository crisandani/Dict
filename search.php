<?php
	include("connection.php");
	
$min=1;// minim caracter
	if(isset($_POST['Search']))
	{
		$search=$_POST['Search'];
	if(strlen($search)<$min){//verificare min caractere
		$output='<div id="eroare">'."Trebuie sa introduci cel putin un caracter !".'</div>';
	}else{
	$search = htmlspecialchars($search);
	$search = mysqli_real_escape_string($db,$search);
		
		//verifica daca sunt selectate ambele capitole sau nici unul
		
		if((!isset($_POST['It'])&&!isset($_POST['Automatizari']))) //---------- asa merge
		//if(isset($_POST['Toate'])) ---- asa nu ?!?!?!?!?!?!?!?!?
			$query=mysqli_query($db,"SELECT * FROM words WHERE name LIKE '%$search%'") or die(mysql_error());
			
		else{
			//verifica daca este selectat cap. it
			if(isset($_POST['It']))
			{
			$capitol=$_POST['It'];
			}
			else {
			//verifica daca este selectat cap. automatizari
			if(isset($_POST['Automatizari']))			
				$capitol=$_POST['Automatizari']; 
			
				}
				$query=mysqli_query($db,"SELECT words.* from (words JOIN capitol_words ON words.id=capitol_words.word_id) join capitol on capitol.id= capitol_words.capitol_id WHERE words.name like '%$search%' and capitol_words.capitol_id=$capitol") or die(mysql_error());
		}
		
	
	
	
	
	if(mysqli_num_rows($query) > 0) {
	
	while($rezultate=mysqli_fetch_array($query)){
		$name=$rezultate['name'];
		$short=$rezultate['short'];
		$description=$rezultate['description'];
		
		$output .= '<div id="nume">'.$name.'</div><div id="short">'.$short.'</div><p>'.$description.'</p>';
		
	}
									}
									else {
									$output='<div id="eroare">'."Nu s-au gasit rezultate !".'</div>'; }
	}
	}
   ?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
   <link rel="stylesheet" href="styleSearch.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<a href="redirectSearchHomeBtn.php"><button id="buton">Home</button></a>

<form action="search.php" method="post">

	<input id="SearchBar" type="text" name="Search" placeholder="Caută...">
	<button id="Search"  name="Submit" type="submit">
	<i class="fa fa-search"></i></button>
	</form>
	<form>
	<div class="checkbox">
	<input  onChange="uncheck()" type="checkbox"id="Toate" name="Toate"	checked>Toate
	<input onChange="uncheck()" type="checkbox" id="it" name="It" value="1" >IT
	<input onChange="uncheck()" type="checkbox" id="aut" name="Automatizari" value='2' >Automatizari
	</div>
	</form>
	
	
<?php echo("$output"); ?>
</body>

<script>
function uncheck(){
if((document.getElementById('it').checked ||document.getElementById('aut').checked )==true)
	document.getElementById('Toate').checked=false;
else document.getElementById('Toate').checked=true;
}
</script>
</html>
